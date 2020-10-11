using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Xml.Serialization;
using System.Diagnostics;
using System.Net;
using System.Runtime.InteropServices;

namespace WinDS_PRO_Zero
{
    [System.Runtime.InteropServices.ComVisibleAttribute(true)]
    public partial class Form1 : Form
    {
        private applist apps = new applist();
        private string appsFolder;
        private applist appsUpdate;
        private string home = "http://windsprozero.blogspot.com/";
        private string appsUpdateURL = "http://windsprozero.sourceforge.net/apps.xml";

        public Form1()
        {
            InitializeComponent();
        }

        private bool CheckConnection(String URL)
        {
            try
            {
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(URL);
                //request.Timeout = 5000;
                request.Credentials = CredentialCache.DefaultNetworkCredentials;
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();

                return (response.StatusCode == HttpStatusCode.OK);
            }
            catch (Exception)
            {
                return false;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            /*
            applist appsxml = new applist();
            appsxml.LoadFromPath("windsprozero.xml", Application.StartupPath);
            appsxml.SaveToFile("apps.xml");

            Application.Exit();
            */

            toolStrip1.Renderer = new ZeroRenderer();

            appsFolder = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.CommonDocuments), "WinDS PRO Zero");
            if (!Directory.Exists(appsFolder))
            {
                Directory.CreateDirectory(appsFolder);
            }
            apps.LoadFromPath("windsprozero.xml", appsFolder);
            appsUpdate = new applist();

            webBrowser.ObjectForScripting = this;
            webBrowser.ScriptErrorsSuppressed = true;

            if (CheckConnection(home))
            {
                webBrowser.Navigate(home);
            }
            else
            {
                webBrowser.DocumentText = WinDS_PRO_Zero.Properties.Resources.localhome;
            }

            try
            {
                appsUpdate = applist.LoadFromURL(appsUpdateURL);
            }
            catch (Exception)
            {
            }
        }

        // Ejecutar emulador
        public void Run(int id)
        {
            if (id <= apps.Count - 1)
            {
                apps[id].Run();
            }
        }

        // Listar emuladores
        public string List()
        {
            StringBuilder myList = new StringBuilder();
            bool mustUpdate = false;
            string updateWeb = home;

            for (int i = 0; i < apps.Count; i++)
            {
                if (appsUpdate.Count > 0) {
                foreach (app myAppUpdate in appsUpdate)
                {
                    if (apps[i].Name == myAppUpdate.Name)
                    {
                        if (apps[i].Version != myAppUpdate.Version)
                        {
                            mustUpdate = true;
                            updateWeb = myAppUpdate.Website;
                            break;
                        }
                    }
                }
                }
                if (mustUpdate)
                {
                    myList.AppendLine(String.Format("<li><span onclick='window.external.Run({0})'>{1}</span> | <a class='updateLink' href='{2}#posts'>Hay una nueva versión disponible</a></li>", i, apps[i].ToString(), updateWeb));
                }
                else
                {
                    myList.AppendLine(String.Format("<li onclick='window.external.Run({0})'>{1}</li>", i, apps[i].ToString()));
                }
                mustUpdate = false;
            }
            return myList.ToString();
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            webBrowser.GoBack();
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            webBrowser.GoForward();
        }
    }

    public class app
    {
        public string Name;
        public string Version;
        public string Executable;
        public string Website;
        private string folder;

        private XmlSerializer mySerializer;
        private FileStream myFileStream;

        public app()
        {
            this.Name = String.Empty;
            this.Version = String.Empty;
            this.Executable = String.Empty;
            this.Website = String.Empty;
        }

        public app(string name, string version, string executable, string website)
        {
            this.Name = name;
            this.Version = version;
            this.Executable = executable;
            this.Website = website;
        }

        public string Folder()
        {
            return this.folder;
        }

        public void Folder(string newFolder)
        {
            this.folder = newFolder;
        }

        public void SaveToFile(string filename)
        {
            mySerializer = new XmlSerializer(typeof(app));
            myFileStream = new FileStream(filename, FileMode.Create);
            mySerializer.Serialize(myFileStream, this);
            myFileStream.Close();
        }

        public void LoadFromFile(string filename)
        {
            app myApp;
            mySerializer = new XmlSerializer(typeof(app));
            myFileStream = new FileStream(filename, FileMode.Open);
            myApp = (app)mySerializer.Deserialize(myFileStream);
            this.Name = myApp.Name;
            this.Version = myApp.Version;
            this.Executable = myApp.Executable;
            this.Website = myApp.Website;
            myFileStream.Close();
        }

        public override string ToString()
        {
            return this.Name + " " + this.Version;
        }

        public void Run()
        {
            Process proc = new Process();
            proc.StartInfo.FileName = Path.Combine(this.Folder(), this.Executable);
            proc.StartInfo.WorkingDirectory = this.Folder();
            proc.Start();
            proc.Close();
        }
    }

    public class applist : List<app>
    {
        private XmlSerializer mySerializer;
        private FileStream myFileStream;

        public applist()
        {

        }

        public void LoadFromPath(string filename, string path)
        {
            string[] files = Directory.GetFiles(path, filename, SearchOption.AllDirectories);

            foreach (string file in files)
            {
                this.Add(new app());
                this[this.Count - 1].LoadFromFile(file);
                this[this.Count - 1].Folder(Path.GetDirectoryName(file));
            }
        }

        public void SaveToFile(string filename)
        {
            mySerializer = new XmlSerializer(typeof(applist));
            myFileStream = new FileStream(filename, FileMode.Create);
            mySerializer.Serialize(myFileStream, this);
            myFileStream.Close();
        }

        public static applist LoadFromURL(string url)
        {
            WebClient myWebData = new WebClient();
            Stream myWebStream;
            myWebStream = myWebData.OpenRead(url);

            XmlSerializer mySerializer;
            mySerializer = new XmlSerializer(typeof(applist));
            return (applist)mySerializer.Deserialize(myWebStream);
        }
    }

    public class ZeroRenderer : ToolStripRenderer
    {
        protected override void OnRenderButtonBackground(ToolStripItemRenderEventArgs e)
        {
            if (e.Item.Selected) {
                SolidBrush myBrush = new SolidBrush(Color.FromArgb(150, 150, 150));
                e.Graphics.FillRectangle(myBrush, 0, 0, e.Item.Width, e.Item.Height);
            }
        }

        protected override void OnRenderToolStripBackground(ToolStripRenderEventArgs e)
        {
            SolidBrush myBrush = new SolidBrush(Color.FromArgb(100, 100, 100));
            e.Graphics.FillRectangle(myBrush, 0, 0, e.ToolStrip.Width, e.ToolStrip.Height);

            Pen myPen = new Pen(Color.FromArgb(25, 25, 25), 1);
            Pen myPen2 = new Pen(Color.FromArgb(110, 110, 110), 1);
            e.Graphics.DrawLine(myPen2, 0, e.ToolStrip.Height - 2, e.ToolStrip.Width - 1, e.ToolStrip.Height - 2);
            e.Graphics.DrawLine(myPen, 0, e.ToolStrip.Height - 1, e.ToolStrip.Width - 1, e.ToolStrip.Height - 1);
        }
    }
}
