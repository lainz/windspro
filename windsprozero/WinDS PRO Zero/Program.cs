using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using System.Threading;

namespace WinDS_PRO_Zero
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            if (!Program.IsSingleInstance())
            {
                Application.Exit();
            }
            else
            {
                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);
                Application.Run(new Form1());
            }
        }

        static Mutex _m;
        static string _mutexName = "WinDS_PRO_Zero";

        static bool IsSingleInstance()
        {
            try
            {
                // Try to open existing mutex.
                Mutex.OpenExisting(_mutexName);
            }
            catch
            {
                // If exception occurred, there is no such mutex.
                Program._m = new Mutex(true, _mutexName);

                // Only one instance.
                return true;
            }
            // More than one instance.
            return false;
        }
    }
}
