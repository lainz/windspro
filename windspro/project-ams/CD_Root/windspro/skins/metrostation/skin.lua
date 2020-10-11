--[[
------------------------------------------------------------------------
------------------------------------------------------------------------

El contenido de este archivo es Scripting LUA, como plugin para la aplicacion WinDS PRO de lainz (www.windsprocentral.blogspot.com).

Este archivo fue escrito por TheDary & el contenido de este es de su autoria. (TheDary.jimdo.com)

Usted tiene permiso para distribuir este archivo de skin siempre y cuando lo haga de manera legal y no cobre por ello.


Este skin está inspirado en la apariencia visual de Windows Phone7 propiedad de microsoft y todos los derechos estan reservados o no.

************************

The contents of this file is LUA Scripting as plugin for application Lainz WinDS PRO (www.windsprocentral.blogspot.com).

This file was written by TheDary & content of this is his authorship. (TheDary.jimdo.com)

You have permission to distribute this skin file as long as you do legally and does not charge for it.

Minimaliztik

This skin is inspired by the visual appearance of Microsoft Windows Phone7 property and all rights are reserved or not.
------------------------------------------------------------------------
------------------------------------------------------------------------
--]]--

if picture == "predeterminado" then
skn_windspro = {}
skn_windspro.ImageFilename = "windspro\\skins\\metrostation\\barra.png"
Application.SetPageProperties("WinDS PRO", skn_windspro)
end

--[[
skn_barra = {}
skn_barra.ImageFile = "windspro\\skins\\metrostation\\barra.png"
skn_barra.Width = 630
skn_barra.Height = 36
skn_barra.X = 0
skn_barra.Y = 0
skn_barra.Opacity = 100
Image.SetProperties("barra", skn_barra)
]]--
Image.SetVisible("barra", false)

skn_fondo = {}
skn_fondo.Width = 630
skn_fondo.Height = 348
skn_fondo.X = 0
skn_fondo.Y = 0
Hotspot.SetProperties("fondo", skn_fondo)
--[[
skn_skin = {}
skn_skin.ButtonFile = "windspro\\skins\\metrostation\\stab.btn"
skn_skin.X = 593
skn_skin.Y = 5
skn_skin.Width = 31
skn_skin.Height = 24
Button.SetProperties("cambiarfondo", skn_skin)
]]--
Button.SetVisible("cerrar", false)
Button.SetVisible("cambiarfondo", false)

skn_menu_windspro = {}
skn_menu_windspro.ButtonFile = "windspro\\skins\\metrostation\\stab.btn"
skn_menu_windspro.X = 593
skn_menu_windspro.Y = 5
skn_menu_windspro.Width = 31
skn_menu_windspro.Height = 24
skn_menu_windspro.Text = ""
Button.SetProperties("menu_windspro", skn_menu_windspro)

skn_menu_nocashgba = {}
skn_menu_nocashgba.ButtonFile = "windspro\\skins\\metrostation\\nocash.btn"
skn_menu_nocashgba.X = 101
skn_menu_nocashgba.Y = 331
skn_menu_nocashgba.Width = 50
skn_menu_nocashgba.Height = 50
skn_menu_nocashgba.Text = ""
Button.SetProperties("menu_nocashgba", skn_menu_nocashgba)

skn_menu_ideas = {}
skn_menu_ideas.ButtonFile = "windspro\\skins\\metrostation\\ideas.btn"
skn_menu_ideas.X = 228
skn_menu_ideas.Y = 331
skn_menu_ideas.Width = 50
skn_menu_ideas.Height = 49
skn_menu_ideas.Text = ""
Button.SetProperties("menu_ideas", skn_menu_ideas)

skn_menu_desmume = {}
skn_menu_desmume.ButtonFile = "windspro\\skins\\metrostation\\desmume.btn"
skn_menu_desmume.X = 350
skn_menu_desmume.Y = 330
skn_menu_desmume.Width = 65
skn_menu_desmume.Height = 51
skn_menu_desmume.Text = ""
Button.SetProperties("menu_desmume", skn_menu_desmume)

skn_menu_vba = {}
skn_menu_vba.ButtonFile = "windspro\\skins\\metrostation\\visualboy.btn"
skn_menu_vba.X = 476
skn_menu_vba.Y = 330
skn_menu_vba.Width = 65
skn_menu_vba.Height = 51
skn_menu_vba.Text = ""
Button.SetProperties("menu_vba", skn_menu_vba)


Audio.ToggleMute(CHANNEL_ALL);



skn_abrir = {}
skn_abrir.ButtonFile = "windspro\\skins\\metrostation\\boton.btn"
skn_abrir.FontName = "Tahoma"
skn_abrir.FontSize = 10
skn_abrir.X = 0
skn_abrir.Y = 36
skn_abrir.Width = 139
skn_abrir.Height = 36
skn_abrir.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_abrir.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_abrir.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_abrir.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("abrir", skn_abrir)

skn_opciones = {}
skn_opciones.ButtonFile = "windspro\\skins\\metrostation\\boton.btn"
skn_opciones.FontName = "Tahoma"
skn_opciones.FontSize = 10
skn_opciones.X = 0
skn_opciones.Y = 72
skn_opciones.Width = 139
skn_opciones.Height = 36
skn_opciones.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_opciones.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_opciones.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_opciones.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("opciones", skn_opciones)

skn_web = {}
skn_web.ButtonFile = "windspro\\skins\\metrostation\\boton.btn"
skn_web.FontName = "Tahoma"
skn_web.FontSize = 10
skn_web.X = 0
skn_web.Y = 108
skn_web.Width = 139
skn_web.Height = 36
skn_web.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_web.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_web.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_web.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("web", skn_web)

skn_salir = {}
skn_salir.ButtonFile = "windspro\\skins\\metrostation\\boton.btn"
skn_salir.FontName = "Tahoma"
skn_salir.FontSize = 10
skn_salir.X = 0
skn_salir.Y = 144
skn_salir.Width = 139
skn_salir.Height = 36
skn_salir.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_salir.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_salir.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_salir.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("salir", skn_salir)

skn_nocashzoomer = {}
skn_nocashzoomer.ButtonFile = "windspro\\skins\\metrostation\\Botones\\nocashzoomer.btn"
skn_nocashzoomer.X = 14
skn_nocashzoomer.Y = 130
skn_nocashzoomer.Width = 140
skn_nocashzoomer.Height = 25
skn_nocashzoomer.Text = ""
Button.SetProperties("nocashzoomer", skn_nocashzoomer)

skn_nocashgba = {}
skn_nocashgba.ButtonFile = "windspro\\skins\\metrostation\\Botones\\nocashgba.btn"
skn_nocashgba.X = 14
skn_nocashgba.Y = 155
skn_nocashgba.Width = 140
skn_nocashgba.Height = 25
skn_nocashgba.Text = ""
Button.SetProperties("nocashgba", skn_nocashgba)

skn_ngzoom = {}
skn_ngzoom.ButtonFile = "windspro\\skins\\metrostation\\Botones\\ngzoom.btn"
skn_ngzoom.X = 14
skn_ngzoom.Y = 180
skn_ngzoom.Width = 140
skn_ngzoom.Height = 25
skn_ngzoom.Text = ""
Button.SetProperties("ngzoom", skn_ngzoom)

skn_nocashmooz = {}
skn_nocashmooz.ButtonFile = "windspro\\skins\\metrostation\\Botones\\nocashmooz.btn"
skn_nocashmooz.X = 14
skn_nocashmooz.Y = 205
skn_nocashmooz.Width = 140
skn_nocashmooz.Height = 25
skn_nocashmooz.Text = ""
Button.SetProperties("nocashmooz", skn_nocashmooz)

skn_noz = {}
skn_noz.ButtonFile = "windspro\\skins\\metrostation\\Botones\\noz.btn"
skn_noz.X = 14
skn_noz.Y = 230
skn_noz.Width = 140
skn_noz.Height = 25
skn_noz.Text = ""
Button.SetProperties("noz", skn_noz)

skn_myzoom = {}
skn_myzoom.ButtonFile = "windspro\\skins\\metrostation\\Botones\\myzoom.btn"
skn_myzoom.X = 14
skn_myzoom.Y = 255
skn_myzoom.Width = 140
skn_myzoom.Height = 25
skn_myzoom.Text = ""
Button.SetProperties("myzoom", skn_myzoom)

skn_nocashgba2x = {}
skn_nocashgba2x.ButtonFile = "windspro\\skins\\metrostation\\Botones\\2xnocashgba.btn"
skn_nocashgba2x.X = 14
skn_nocashgba2x.Y = 280
skn_nocashgba2x.Width = 140
skn_nocashgba2x.Height = 25
skn_nocashgba2x.Text = ""
Button.SetProperties("nocashgba2x", skn_nocashgba2x)

skn_ideas = {}
skn_ideas.ButtonFile = "windspro\\skins\\metrostation\\Botones\\ideas.btn"
skn_ideas.X = 14
skn_ideas.Y = 280
skn_ideas.Width = 140
skn_ideas.Height = 25
skn_ideas.Text = ""
Button.SetProperties("ideas", skn_ideas)

skn_desmume = {}
skn_desmume.ButtonFile = "windspro\\skins\\metrostation\\Botones\\desmume.btn"
skn_desmume.X = 14
skn_desmume.Y = 280
skn_desmume.Width = 140
skn_desmume.Height = 25
skn_desmume.Text = ""
Button.SetProperties("desmume", skn_desmume)

skn_vbalink = {}
skn_vbalink.ButtonFile = "windspro\\skins\\metrostation\\Botones\\vbalink.btn"
skn_vbalink.X = 14
skn_vbalink.Y = 255
skn_vbalink.Width = 140
skn_vbalink.Height = 25
skn_vbalink.Text = ""
Button.SetProperties("vbalink", skn_vbalink)

skn_vbam = {}
skn_vbam.ButtonFile = "windspro\\skins\\metrostation\\Botones\\vbam.btn"
skn_vbam.X = 14
skn_vbam.Y = 280
skn_vbam.Width = 140
skn_vbam.Height = 25
skn_vbam.Text = ""
Button.SetProperties("vbam", skn_vbam)


tblImageProps = {}
tblImageProps.ImageFile = "windspro\\skins\\metrostation\\titlenocash.png"
tblImageProps.Height = 40
tblImageProps.Width = 200
tblImageProps.Y = 15
tblImageProps.X = 190
tblImageProps.Visible = false

Page.CreateObject(OBJECT_IMAGE, "title", tblImageProps);

local Script = [[
if Button.IsVisible("vbam") == true then
   Image.Load("title", "windspro\\skins\\metrostation\\titlevisualboy.png")
   Image.SetVisible("title", true)
elseif Button.IsVisible("desmume") == true then
   Image.Load("title", "windspro\\skins\\metrostation\\titledesmume.png")
   Image.SetVisible("title", true)
elseif Button.IsVisible("myzoom") == true then
   Image.Load("title", "windspro\\skins\\metrostation\\titlenocash.png")
   Image.SetVisible("title", true)
elseif Button.IsVisible("ideas") == true then
   Image.Load("title", "windspro\\skins\\metrostation\\titleideas.png")
   Image.SetVisible("title", true)
else
   Image.SetVisible("title", false)
end

]]

Application.SetPageScript(Application.GetCurrentPage(), "On Mouse Move", Script)
Application.SetPageScript(Application.GetCurrentPage(), "On Mouse Button", Script)

---

Application.LoadScript("windspro\\skins\\metrostation\\Metro.lua");
