--[[
------------------------------------------------------------------------
------------------------------------------------------------------------

El contenido de este archivo es Scripting LUA, como plugin para la aplicacion WinDS PRO de lainz (www.windsprocentral.blogspot.com).

Este archivo fue escrito por TheDary & el contenido de este es de su autoria. (TheDary.jimdo.com)

Usted tiene permiso para distribuir este archivo de skin siempre y cuando lo haga de manera legal y no cobre por ello.


Este skin está inspirado en la apariencia visual de Windows Phone7 propiedad de microsoft y todos los derechos estan reservados o no.

****************************

The contents of this file is LUA Scripting as plugin for application Lainz WinDS PRO (www.windsprocentral.blogspot.com).

This file was written by TheDary & content of this is his authorship. (TheDary.jimdo.com)

You have permission to distribute this skin file as long as you do legally and does not charge for it.

Minimaliztik

This skin is inspired by the visual appearance of Microsoft Windows Phone7 property and all rights are reserved or not.

------------------------------------------------------------------------
------------------------------------------------------------------------
--]]--


tblBtnProps = {}
tblBtnProps.ButtonFile = "windspro\\skins\\metrostation\\facebook.btn"
tblBtnProps.Cursor = CURSOR_ARROW
tblBtnProps.X = 217
tblBtnProps.Y = 58
tblBtnProps.Width = 125
tblBtnProps.Height = 257	
tblBtnProps.HighlightSound = SND_NONE
tblBtnProps.ClickSound = SND_NONE

Page.CreateObject(OBJECT_BUTTON, "Met_fb",tblBtnProps)

Page.SetObjectScript("Met_fb", "On Click", 
[[File.OpenURL("http://windsprocentral.blogspot.com/p/social.html", SW_SHOWNORMAL)]])


---------------------------------------------
---------------------------------------------
---------------------------------------------


tblBtnProps.ButtonFile = "windspro\\skins\\metrostation\\abrir.btn"
tblBtnProps.X = 355
tblBtnProps.Y = 58
tblBtnProps.Width = 125
tblBtnProps.Height = 123

Page.CreateObject(OBJECT_BUTTON, "Met_open",tblBtnProps)

Page.SetObjectScript("Met_open", "On Click", [[Page.ClickObject("abrir")]])

---------------------------------------------
---------------------------------------------
---------------------------------------------


tblBtnProps.ButtonFile = "windspro\\skins\\metrostation\\website.btn"
tblBtnProps.X = 493
tblBtnProps.Y = 58
tblBtnProps.Width = 125
tblBtnProps.Height = 123

Page.CreateObject(OBJECT_BUTTON, "Met_web",tblBtnProps)

Page.SetObjectScript("Met_web", "On Click", [[Page.ClickObject("web")]])

---------------------------------------------
---------------------------------------------
---------------------------------------------


tblBtnProps.ButtonFile = "windspro\\skins\\metrostation\\opciones.btn"
tblBtnProps.X = 354
tblBtnProps.Y = 192
tblBtnProps.Width = 125
tblBtnProps.Height = 123


Page.CreateObject(OBJECT_BUTTON, "Met_set",tblBtnProps)

Page.SetObjectScript("Met_set", "On Click", [[Page.ClickObject("opciones")]])

---------------------------------------------
---------------------------------------------
---------------------------------------------


tblBtnProps.ButtonFile = "windspro\\skins\\metrostation\\salir.btn"
tblBtnProps.X = 493
tblBtnProps.Y = 192
tblBtnProps.Width = 125
tblBtnProps.Height = 123


Page.CreateObject(OBJECT_BUTTON, "Met_close",tblBtnProps)

Page.SetObjectScript("Met_close", "On Click", [[Page.ClickObject("salir")]])

Page.SetObjectScript("menu_windspro", "On Click", [[File.OpenURL("http://windsprocentral.blogspot.com/p/apps.html", SW_SHOWNORMAL)]])

