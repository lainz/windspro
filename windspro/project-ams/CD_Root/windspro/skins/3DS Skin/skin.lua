if picture == "predeterminado" then
skn_windspro = {}
skn_windspro.ImageFilename = "windspro\\skins\\3DS Skin\\barra.png"
Application.SetPageProperties("WinDS PRO", skn_windspro)
end


Window.SetSize(Application.GetWndHandle(), 553, 514);
Window.SetMask(Application.GetWndHandle(), "windspro\\skins\\3DS Skin\\msk.png", true, 0);


skn_fondo = {}
skn_fondo.Width = 283
skn_fondo.Height = 169
skn_fondo.X = 136
skn_fondo.Y = 56
Hotspot.SetProperties("fondo", skn_fondo)
skn_fondo_scriptset = [[
Application.SetRedraw(false)
Button.SetVisible("abrir", false)
Button.SetVisible("opciones", false)
Button.SetVisible("web", true)
Button.SetVisible("salir", true)
Button.SetVisible("nocashzoomer", false)
Button.SetVisible("nocashgba", false)
Button.SetVisible("ngzoom", false)
Button.SetVisible("nocashmooz", false)
Button.SetVisible("noz", false)
Button.SetVisible("myzoom", false)
Button.SetVisible("nocashgba2x", false)
Button.SetVisible("ideas", false)
Button.SetVisible("desmume", false)
Button.SetVisible("vbam", false)
Button.SetVisible("vbalink", false)
Button.SetState("menu_windspro", BTN_UP)
Button.SetState("menu_nocashgba", BTN_UP)
Button.SetState("menu_ideas", BTN_UP)
Button.SetState("menu_desmume", BTN_UP)
Button.SetState("menu_vba", BTN_UP)
Application.SetRedraw(true)
]]
Page.SetObjectScript("fondo", "On Click", skn_fondo_scriptset)

skn_skin = {}
skn_skin.HighlightSound = SND_CUSTOM
skn_skin.Text = "+"
skn_skin.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_skin.X = 359
skn_skin.Y = 287
skn_skin.Width = 32
skn_skin.Height = 38
skn_skin.XOffset = 1
skn_skin.YOffset = -2
skn_skin.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_skin.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_skin.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_skin.ColorDisabled = Math.HexColorToNumber("FFFFFF")
skn_skin.TooltipText = "Cambiar imagen del fondo"
skn_skin_scriptset = [[
Application.SetRedraw(false)
Button.SetVisible("abrir", false)
Button.SetVisible("opciones", false)
Button.SetVisible("web", true)
Button.SetVisible("salir", true)
Button.SetVisible("nocashzoomer", false)
Button.SetVisible("nocashgba", false)
Button.SetVisible("ngzoom", false)
Button.SetVisible("nocashmooz", false)
Button.SetVisible("noz", false)
Button.SetVisible("myzoom", false)
Button.SetVisible("nocashgba2x", false)
Button.SetVisible("ideas", false)
Button.SetVisible("desmume", false)
Button.SetVisible("vbam", false)
Button.SetVisible("vbalink", false)
Button.SetState("menu_windspro", BTN_UP)
Button.SetState("menu_nocashgba", BTN_UP)
Button.SetState("menu_ideas", BTN_UP)
Button.SetState("menu_desmume", BTN_UP)
Button.SetState("menu_vba", BTN_UP)
Application.SetRedraw(true)
	local encontrado = Dialog.FileBrowse(true, "", Shell.GetFolder(SHF_MYPICTURES), "Pictures|*.apm;*.bmp;*.emf;*.gif;*.jpg;*.jpeg;*.jpe;*.jfif;*.jif;*.pcd;*.pcx;*.png;*.psd;*.tga;*.tif;*.tiff;*.wmf|", "", "", false, true)
	if encontrado[1] ~= "CANCEL" then
		Application.SetPageProperties("WinDS PRO", {ImageFilename=encontrado[1]})
		local picture_ = String.SplitPath(encontrado[1])
		picture = "\""..picture_.Drive..picture_.Folder..picture_.Filename..picture_.Extension.."\""
	end
]]
Page.SetObjectScript("cambiarfondo", "On Click", skn_skin_scriptset)
Button.SetProperties("cambiarfondo", skn_skin)

skn_cerrar = {}
skn_cerrar.Text = ""
skn_cerrar.ButtonFile = "windspro\\skins\\3DS Skin\\cerrar.btn"
skn_cerrar.X = 410
skn_cerrar.Y = 456
skn_cerrar.Width = 43
skn_cerrar.Height = 45
skn_cerrar.ColorNormal = Math.HexColorToNumber("4C535C")
skn_cerrar.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_cerrar.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_cerrar.ColorDisabled = Math.HexColorToNumber("FFFFFF")
skn_cerrar.TooltipText = "Cerrar WinDS PRO"
Button.SetProperties("cerrar", skn_cerrar)
Button.SetVisible("cerrar", true)

Button.SetVisible("menu_windspro", true)

skn_barra = {}
skn_barra.ImageFile = "windspro\\skins\\3DS Skin\\fondo.png"
skn_barra.Width = 283
skn_barra.Height = 169
skn_barra.X = 136
skn_barra.Y = 56
skn_barra.Opacity = 100
Image.SetProperties("barra", skn_barra)
Page.SetObjectZOrder("barra", ZORDER_BACK, "")

skn_menu_nocashgba = {}
skn_menu_nocashgba.ButtonFile = "windspro\\skins\\3DS Skin\\nocash.btn"
skn_menu_nocashgba.FontName = "Tahoma"
skn_menu_nocashgba.Text = ""
skn_menu_nocashgba.FontSize = 9
skn_menu_nocashgba.X = 467
skn_menu_nocashgba.Y = 326
skn_menu_nocashgba.Width = 49
skn_menu_nocashgba.Height = 51
skn_menu_nocashgba.ColorNormal = Math.HexColorToNumber("4C535C")
skn_menu_nocashgba.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_menu_nocashgba.ColorDown = Math.HexColorToNumber("4C535C")
skn_menu_nocashgba.ColorDisabled = Math.HexColorToNumber("4C535C")
script_menu_nocashgba = [[
Application.SetRedraw(false)
Button.SetVisible("abrir", false)
Button.SetVisible("opciones", false)
Button.SetVisible("web", true)
Button.SetVisible("salir", true)
Button.SetVisible("nocashzoomer", false)
Button.SetVisible("nocashgba", false)
Button.SetVisible("ngzoom", false)
Button.SetVisible("nocashmooz", false)
Button.SetVisible("noz", false)
Button.SetVisible("myzoom", false)
Button.SetVisible("nocashgba2x", false)
Button.SetVisible("ideas", false)
Button.SetVisible("desmume", false)
Button.SetVisible("vbam", false)
Button.SetVisible("vbalink", false)
Application.SetRedraw(true)

if Button.GetProperties("menu_nocashgba").ToggleState == 0 then
Application.SetRedraw(false)
Button.SetVisible("nocashzoomer", false)
Button.SetVisible("nocashgba", false)
Button.SetVisible("ngzoom", false)
Button.SetVisible("nocashmooz", false)
Button.SetVisible("noz", false)
Button.SetVisible("myzoom", false)
Button.SetVisible("nocashgba2x", false)
Application.SetRedraw(true)
elseif Button.GetProperties("menu_nocashgba").ToggleState == 1 then
Application.SetRedraw(false)
Button.SetVisible("nocashzoomer", true)
Button.SetVisible("nocashgba", true)
Button.SetVisible("ngzoom", true)
Button.SetVisible("nocashmooz", true)
Button.SetVisible("noz", true)
Button.SetVisible("myzoom", true)
Button.SetVisible("nocashgba2x", true)
Application.SetRedraw(true)
end

Application.SetRedraw(false)
Button.SetState("menu_windspro", BTN_UP)
Button.SetState("menu_ideas", BTN_UP)
Button.SetState("menu_desmume", BTN_UP)
Button.SetState("menu_vba", BTN_UP)
Application.SetRedraw(true)
]]
Page.SetObjectScript("menu_nocashgba", "On Click", script_menu_nocashgba);
Button.SetProperties("menu_nocashgba", skn_menu_nocashgba)

skn_menu_ideas = {}
skn_menu_ideas.ButtonFile = "windspro\\skins\\3DS Skin\\ideas.btn"
skn_menu_ideas.Text = ""
skn_menu_ideas.X = 439
skn_menu_ideas.Y = 292
skn_menu_ideas.Width = 48
skn_menu_ideas.Height = 63
skn_menu_ideas.ColorNormal = Math.HexColorToNumber("4C535C")
skn_menu_ideas.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_menu_ideas.ColorDown = Math.HexColorToNumber("4C535C")
skn_menu_ideas.ColorDisabled = Math.HexColorToNumber("4C535C")
skn_menu_ideas_setscript = [[
Application.SetRedraw(false)
Button.SetVisible("abrir", false)
Button.SetVisible("opciones", false)
Button.SetVisible("web", true)
Button.SetVisible("salir", true)
Button.SetVisible("nocashzoomer", false)
Button.SetVisible("nocashgba", false)
Button.SetVisible("ngzoom", false)
Button.SetVisible("nocashmooz", false)
Button.SetVisible("noz", false)
Button.SetVisible("myzoom", false)
Button.SetVisible("nocashgba2x", false)
Button.SetVisible("desmume", false)
Button.SetVisible("vbam", false)
Button.SetVisible("vbalink", false)

if Button.GetProperties("menu_ideas").ToggleState == 0 then
Button.SetVisible("ideas", false)
elseif Button.GetProperties("menu_ideas").ToggleState == 1 then
Button.SetVisible("ideas", true)
end

Button.SetState("menu_windspro", BTN_UP)
Button.SetState("menu_nocashgba", BTN_UP)
Button.SetState("menu_desmume", BTN_UP)
Button.SetState("menu_vba", BTN_UP)
Application.SetRedraw(true)
]]
Page.SetObjectScript("menu_ideas", "On Click", skn_menu_ideas_setscript)
Button.SetProperties("menu_ideas", skn_menu_ideas)

skn_menu_desmume = {}
skn_menu_desmume.ButtonFile = "windspro\\skins\\3DS Skin\\desmume.btn"
skn_menu_desmume.Text = ""
skn_menu_desmume.X = 410
skn_menu_desmume.Y = 323
skn_menu_desmume.Width = 47
skn_menu_desmume.Height = 57
skn_menu_desmume.ColorNormal = Math.HexColorToNumber("4C535C")
skn_menu_desmume.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_menu_desmume.ColorDown = Math.HexColorToNumber("4C535C")
skn_menu_desmume.ColorDisabled = Math.HexColorToNumber("4C535C")
script_skn_menu_desmume = [[
Application.SetRedraw(false)
Button.SetVisible("abrir", false)
Button.SetVisible("opciones", false)
Button.SetVisible("web", true)
Button.SetVisible("salir", true)
Button.SetVisible("nocashzoomer", false)
Button.SetVisible("nocashgba", false)
Button.SetVisible("ngzoom", false)
Button.SetVisible("nocashmooz", false)
Button.SetVisible("noz", false)
Button.SetVisible("myzoom", false)
Button.SetVisible("nocashgba2x", false)
Button.SetVisible("ideas", false)
Button.SetVisible("desmume", false)
Button.SetVisible("vbam", false)
Button.SetVisible("vbalink", false)
Application.SetRedraw(true)
if Button.GetProperties("menu_desmume").ToggleState == 0 then
Application.SetRedraw(false)
Button.SetVisible("desmume", false)
Application.SetRedraw(true)
elseif Button.GetProperties("menu_desmume").ToggleState == 1 then
Application.SetRedraw(false)
Button.SetVisible("desmume", true)
Application.SetRedraw(true)
end
Application.SetRedraw(false)
Button.SetState("menu_windspro", BTN_UP)
Button.SetState("menu_nocashgba", BTN_UP)
Button.SetState("menu_ideas", BTN_UP)
Button.SetState("menu_vba", BTN_UP)
Application.SetRedraw(true)
]]
Button.SetProperties("menu_desmume", skn_menu_desmume)
Page.SetObjectScript("menu_desmume", "On Click", script_skn_menu_desmume)

skn_menu_vba = {}
skn_menu_vba.ButtonFile = "windspro\\skins\\3DS Skin\\vba.btn"
skn_menu_vba.Text = ""
skn_menu_vba.X = 440
skn_menu_vba.Y = 353
skn_menu_vba.Width = 48
skn_menu_vba.Height = 54
skn_menu_vba.ColorNormal = Math.HexColorToNumber("4C535C")
skn_menu_vba.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_menu_vba.ColorDown = Math.HexColorToNumber("4C535C")
skn_menu_vba.ColorDisabled = Math.HexColorToNumber("4C535C")
skn_menu_vba_scriptset = [[
Application.SetRedraw(false)
Button.SetVisible("nocashzoomer", false)
Button.SetVisible("nocashgba", false)
Button.SetVisible("ngzoom", false)
Button.SetVisible("nocashmooz", false)
Button.SetVisible("noz", false)
Button.SetVisible("myzoom", false)
Button.SetVisible("nocashgba2x", false)
Button.SetVisible("ideas", false)
Button.SetVisible("desmume", false)
Button.SetVisible("vbam", false)
Button.SetVisible("vbalink", false)
Application.SetRedraw(true)

if Button.GetProperties("menu_vba").ToggleState == 0 then
Application.SetRedraw(false)
Button.SetVisible("vbam_opciones", false)
Button.SetVisible("vbalink", false)
Application.SetRedraw(true)
elseif Button.GetProperties("menu_vba").ToggleState == 1 then
Application.SetRedraw(false)
Button.SetVisible("vbam", true)
Button.SetVisible("vbalink", true)
Application.SetRedraw(true)
end

Application.SetRedraw(false)
Button.SetState("menu_windspro", BTN_UP)
Button.SetState("menu_nocashgba", BTN_UP)
Button.SetState("menu_ideas", BTN_UP)
Button.SetState("menu_desmume", BTN_UP)
Application.SetRedraw(true)
]]
Page.SetObjectScript("menu_vba", "On Click", skn_menu_vba_scriptset)
Button.SetProperties("menu_vba", skn_menu_vba)

skn_abrir = {}
skn_abrir.XOffset = 1
skn_abrir.YOffset = -1
skn_abrir.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_abrir.Text = "Abrir"
skn_abrir.FontName = "Tahoma"
skn_abrir.FontSize = 9
skn_abrir.FontAntiAlias = true
skn_abrir.X = 329
skn_abrir.Y = 426
skn_abrir.Width = 68
skn_abrir.Height = 38
skn_abrir.ColorNormal = Math.HexColorToNumber("ffffff")
skn_abrir.ColorHighlight = Math.HexColorToNumber("ffffff")
skn_abrir.ColorDown = Math.HexColorToNumber("ffffff")
skn_abrir.ColorDisabled = Math.HexColorToNumber("ffffff")
skn_abrir.TooltipText = "Abrir rom"
skn_abrir_scriptset = [[
Application.SetRedraw(false)
Button.SetVisible("nocashzoomer", false)
Button.SetVisible("nocashgba", false)
Button.SetVisible("ngzoom", false)
Button.SetVisible("nocashmooz", false)
Button.SetVisible("noz", false)
Button.SetVisible("myzoom", false)
Button.SetVisible("nocashgba2x", false)
Button.SetVisible("ideas", false)
Button.SetVisible("desmume", false)
Button.SetVisible("vbam", false)
Button.SetVisible("vbalink", false)
Application.SetRedraw(true)
ocultar_menu_ver()
abrir()
]]
Page.SetObjectScript("abrir", "On Click", skn_abrir_scriptset)
Button.SetProperties("abrir", skn_abrir)
Button.SetVisible("abrir", false)

skn_opciones = {}
skn_opciones.XOffset = 1
skn_opciones.YOffset = -1
skn_opciones.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_opciones.Text = "Opciones"
skn_opciones.FontName = "Tahoma"
skn_opciones.FontSize = 9
skn_opciones.FontAntiAlias = true
skn_opciones.TooltipText = "Opciones"
skn_opciones.X = 329
skn_opciones.Y = 403
skn_opciones.Width = 68
skn_opciones.Height = 38
skn_opciones.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_opciones.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_opciones.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_opciones.ColorDisabled = Math.HexColorToNumber("FFFFFF")
skn_opciones_scriptset = [[
Application.SetRedraw(false)
Button.SetVisible("nocashzoomer", false)
Button.SetVisible("nocashgba", false)
Button.SetVisible("ngzoom", false)
Button.SetVisible("nocashmooz", false)
Button.SetVisible("noz", false)
Button.SetVisible("myzoom", false)
Button.SetVisible("nocashgba2x", false)
Button.SetVisible("ideas", false)
Button.SetVisible("desmume", false)
Button.SetVisible("vbam", false)
Button.SetVisible("vbalink", false)
Application.SetRedraw(true)
ocultar_menu_ver()
DialogEx.Show("Opciones", true, nil, nil)
]]
Page.SetObjectScript("opciones", "On Click", skn_opciones_scriptset)
Button.SetProperties("opciones", skn_opciones)
Button.SetVisible("opciones", false)

dialog_opciones = {}
dialog_opciones.BackgroundType = BG_GRADIENT
dialog_opciones.BackgroundColor = Math.HexColorToNumber("25B200")
dialog_opciones.GradientColorTop = Math.HexColorToNumber("0C3C00")
Application.SetDialogProperties("Opciones", dialog_opciones)

skn_web = {}
skn_web.ButtonFile = "windspro\\skins\\3DS Skin\\blog.btn"
skn_web.TooltipText = "Ir al Blog"
skn_web.Text = ""
skn_web.FontAntiAlias = true
skn_web.X = 163
skn_web.Y = 472
skn_web.Width = 76
skn_web.Height = 26
skn_web.ColorNormal = Math.HexColorToNumber("ffffff")
skn_web.ColorHighlight = Math.HexColorToNumber("ffffff")
skn_web.ColorDown = Math.HexColorToNumber("ffffff")
skn_web.ColorDisabled = Math.HexColorToNumber("ffffff")
Button.SetProperties("web", skn_web)
Button.SetVisible("web", true)

skn_salir = {}
skn_salir.ButtonFile = "windspro\\skins\\3DS Skin\\foro.btn"
skn_salir.Text = ""
skn_salir.X = 242
skn_salir.Y = 472
skn_salir.Width = 76
skn_salir.Height = 26
skn_salir.ColorNormal = Math.HexColorToNumber("000000")
skn_salir.ColorHighlight = Math.HexColorToNumber("000000")
skn_salir.ColorDown = Math.HexColorToNumber("000000")
skn_salir.ColorDisabled = Math.HexColorToNumber("000000")
skn_salir_scriptset = [[
Application.SetRedraw(false)
File.OpenURL("http://windsprocentral.blogspot.com/p/social.html", SW_SHOWNORMAL);
Button.SetVisible("nocashzoomer", false)
Button.SetVisible("nocashgba", false)
Button.SetVisible("ngzoom", false)
Button.SetVisible("nocashmooz", false)
Button.SetVisible("noz", false)
Button.SetVisible("myzoom", false)
Button.SetVisible("nocashgba2x", false)
Button.SetVisible("ideas", false)
Button.SetVisible("desmume", false)
Button.SetVisible("vbam", false)
Button.SetVisible("vbalink", false)
Application.SetRedraw(true)
ocultar_menu_ver()
]]
Page.SetObjectScript("salir", "On Click", skn_salir_scriptset)

Button.SetProperties("salir", skn_salir)
Button.SetVisible("salir", true)

skn_nocashzoomer = {}
skn_nocashzoomer.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_nocashzoomer.FontName = "Tahoma"
skn_nocashzoomer.FontSize = 8
skn_nocashzoomer.XOffset = 1
skn_nocashzoomer.YOffset = -1
skn_nocashzoomer.Text = "NZoomer"
skn_nocashzoomer.X = 157
skn_nocashzoomer.Y = 426
skn_nocashzoomer.Width = 68
skn_nocashzoomer.Height = 38
skn_nocashzoomer.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_nocashzoomer.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_nocashzoomer.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_nocashzoomer.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("nocashzoomer", skn_nocashzoomer)

skn_nocashgba = {}
skn_nocashgba.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_nocashgba.FontName = "Tahoma"
skn_nocashgba.FontSize = 8
skn_nocashgba.XOffset = 1
skn_nocashgba.YOffset = -1
skn_nocashgba.X = 157
skn_nocashgba.Y = 403
skn_nocashgba.Width = 68
skn_nocashgba.Height = 38
skn_nocashgba.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_nocashgba.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_nocashgba.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_nocashgba.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("nocashgba", skn_nocashgba)

skn_ngzoom = {}
skn_ngzoom.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_ngzoom.FontName = "Tahoma"
skn_ngzoom.FontSize = 8
skn_ngzoom.XOffset = 1
skn_ngzoom.YOffset = -1
skn_ngzoom.X = 157
skn_ngzoom.Y = 380
skn_ngzoom.Width = 68
skn_ngzoom.Height = 38
skn_ngzoom.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_ngzoom.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_ngzoom.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_ngzoom.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("ngzoom", skn_ngzoom)

skn_nocashmooz = {}
skn_nocashmooz.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_nocashmooz.FontName = "Tahoma"
skn_nocashmooz.FontSize = 8
skn_nocashmooz.XOffset = 1
skn_nocashmooz.YOffset = -1
skn_nocashmooz.X = 157
skn_nocashmooz.Y = 357
skn_nocashmooz.Text = "NMOOZ"
skn_nocashmooz.Width = 68
skn_nocashmooz.Height = 38
skn_nocashmooz.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_nocashmooz.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_nocashmooz.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_nocashmooz.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("nocashmooz", skn_nocashmooz)

skn_noz = {}
skn_noz.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_noz.FontName = "Tahoma"
skn_noz.FontSize = 8
skn_noz.XOffset = 1
skn_noz.YOffset = -1
skn_noz.X = 158
skn_noz.Y = 334
skn_noz.Width = 68
skn_noz.Height = 38
skn_noz.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_noz.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_noz.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_noz.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("noz", skn_noz)

skn_myzoom = {}
skn_myzoom.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_myzoom.FontName = "Tahoma"
skn_myzoom.FontSize = 8
skn_myzoom.XOffset = 1
skn_myzoom.YOffset = -1
skn_myzoom.X = 158
skn_myzoom.Y = 311
skn_myzoom.Width = 68
skn_myzoom.Height = 38
skn_myzoom.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_myzoom.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_myzoom.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_myzoom.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("myzoom", skn_myzoom)

skn_nocashgba2x = {}
skn_nocashgba2x.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_nocashgba2x.FontName = "Tahoma"
skn_nocashgba2x.FontSize = 8
skn_nocashgba2x.XOffset = 1
skn_nocashgba2x.YOffset = -1
skn_nocashgba2x.Text = "NG2X"
skn_nocashgba2x.X = 158
skn_nocashgba2x.Y = 288
skn_nocashgba2x.Width = 68
skn_nocashgba2x.Height = 38
skn_nocashgba2x.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_nocashgba2x.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_nocashgba2x.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_nocashgba2x.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("nocashgba2x", skn_nocashgba2x)

skn_ideas = {}
skn_ideas.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_ideas.FontName = "Tahoma"
skn_ideas.FontSize = 8
skn_ideas.XOffset = 1
skn_ideas.YOffset = -1
skn_ideas.X = 157
skn_ideas.Y = 426
skn_ideas.Width = 68
skn_ideas.Height = 38
skn_ideas.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_ideas.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_ideas.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_ideas.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("ideas", skn_ideas)

skn_desmume = {}
skn_desmume.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_desmume.FontName = "Tahoma"
skn_desmume.FontSize = 8
skn_desmume.XOffset = 1
skn_desmume.YOffset = -1
skn_desmume.X = 157
skn_desmume.Y = 426
skn_desmume.Width = 68
skn_desmume.Height = 38
skn_desmume.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_desmume.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_desmume.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_desmume.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("desmume", skn_desmume)

skn_vbalink = {}
skn_vbalink.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_vbalink.FontName = "Tahoma"
skn_vbalink.FontSize = 8
skn_vbalink.XOffset = 1
skn_vbalink.YOffset = -1
skn_vbalink.X = 157
skn_vbalink.Y = 426
skn_vbalink.Width = 68
skn_vbalink.Height = 38
skn_vbalink.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_vbalink.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_vbalink.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_vbalink.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("vbalink", skn_vbalink)

skn_vbam = {}
skn_vbam.ButtonFile = "windspro\\skins\\3DS Skin\\boton.btn"
skn_vbam.FontName = "Tahoma"
skn_vbam.FontSize = 8
skn_vbam.XOffset = 1
skn_vbam.YOffset = -1
skn_vbam.X = 157
skn_vbam.Y = 403
skn_vbam.Width = 68
skn_vbam.Height = 38
skn_vbam.ColorNormal = Math.HexColorToNumber("FFFFFF")
skn_vbam.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_vbam.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_vbam.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("vbam", skn_vbam)

skn_wdspro = {}
skn_wdspro.ButtonFile = "windspro\\skins\\3DS Skin\\menu.btn"
skn_wdspro.Text = ""
skn_wdspro.X = 321
skn_wdspro.Y = 472
skn_wdspro.Width = 76
skn_wdspro.Height = 26
skn_wdspro.ColorNormal = Math.HexColorToNumber("000000")
skn_wdspro.ColorHighlight = Math.HexColorToNumber("000000")
skn_wdspro.ColorDown = Math.HexColorToNumber("000000")
skn_wdspro.ColorDisabled = Math.HexColorToNumber("000000")
skn_wdspro_scriptset = [[
if Button.GetProperties("menu_windspro").ToggleState == 0 then
Application.SetRedraw(false)
Button.SetVisible("abrir", false)
Button.SetVisible("opciones", false)
Button.SetVisible("web", true)
Button.SetVisible("salir", true)
Application.SetRedraw(true)
elseif Button.GetProperties("menu_windspro").ToggleState == 1 then
Application.SetRedraw(false)
Button.SetVisible("abrir", true)
Button.SetVisible("opciones", true)
Button.SetVisible("descargas", true)
Button.SetVisible("web", true)
Button.SetVisible("salir", true)
Application.SetRedraw(true)
ocultar_menu_ver()
end
]]
Page.SetObjectScript("menu_windspro", "On Click", skn_wdspro_scriptset)

Button.SetProperties("menu_windspro", skn_wdspro)
Button.SetVisible("menu_windspro", true)
