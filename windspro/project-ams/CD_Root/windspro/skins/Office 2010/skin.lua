if picture == "predeterminado" then
skn_windspro = {}
skn_windspro.ImageFilename = "windspro\\skins\\Office 2010\\fondo.png"
Application.SetPageProperties("WinDS PRO", skn_windspro)
end

skn_fondo = {}
skn_fondo.Width = 630
skn_fondo.Height = 318
skn_fondo.X = 0
skn_fondo.Y = 66
Hotspot.SetProperties("fondo", skn_fondo)

skn_skin = {}
skn_skin.HighlightSound = SND_CUSTOM
skn_skin.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_skin.ClickSound = SND_CUSTOM
skn_skin.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_skin.FontName = "Tahoma"
skn_skin.FontSize = 9
skn_skin.Text = "+"
skn_skin.ButtonFile = "windspro\\skins\\Office 2010\\stab.btn"
skn_skin.X = 590
skn_skin.Y = 36
skn_skin.Width = 36
skn_skin.Height = 30
skn_skin.ColorNormal = Math.HexColorToNumber("4C535C")
skn_skin.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_skin.ColorDown = Math.HexColorToNumber("4C535C")
skn_skin.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("cambiarfondo", skn_skin)

skn_cerrar = {}
skn_cerrar.HighlightSound = SND_CUSTOM
skn_cerrar.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_cerrar.ClickSound = SND_CUSTOM
skn_cerrar.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_cerrar.FontName = "Tahoma"
skn_cerrar.FontSize = 9
skn_cerrar.FontWeight = FW_BOLD
skn_cerrar.Text = "x"
skn_cerrar.ButtonFile = "windspro\\skins\\Office 2010\\xtab.btn"
skn_cerrar.X = 592
skn_cerrar.Y = 2
skn_cerrar.Width = 36
skn_cerrar.Height = 30
skn_cerrar.ColorNormal = Math.HexColorToNumber("4C535C")
skn_cerrar.ColorHighlight = Math.HexColorToNumber("FFFFFF")
skn_cerrar.ColorDown = Math.HexColorToNumber("FFFFFF")
skn_cerrar.ColorDisabled = Math.HexColorToNumber("FFFFFF")
Button.SetProperties("cerrar", skn_cerrar)
Button.SetVisible("cerrar", true)

skn_menu_windspro = {}
skn_menu_windspro.HighlightSound = SND_CUSTOM
skn_menu_windspro.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_menu_windspro.ClickSound = SND_CUSTOM
skn_menu_windspro.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_menu_windspro.Text = ""
skn_menu_windspro.ButtonFile = "windspro\\skins\\Office 2010\\wtab.btn"
skn_menu_windspro.X = 4
skn_menu_windspro.Y = 36
skn_menu_windspro.Width = 622
skn_menu_windspro.Height = 344

Button.SetProperties("menu_windspro", skn_menu_windspro)
Page.SetObjectZOrder("menu_windspro", ZORDER_BACK, "")

skn_barra = {}
skn_barra.ImageFile = "windspro\\skins\\Office 2010\\barra.png"
skn_barra.Width = 630
skn_barra.Height = 384
skn_barra.X = 0
skn_barra.Y = 0
skn_barra.Opacity = 100
Image.SetProperties("barra", skn_barra)
Page.SetObjectZOrder("barra", ZORDER_BACK, "")

skn_menu_nocashgba = {}
skn_menu_nocashgba.HighlightSound = SND_CUSTOM
skn_menu_nocashgba.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_menu_nocashgba.ClickSound = SND_CUSTOM
skn_menu_nocashgba.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_menu_nocashgba.ButtonFile = "windspro\\skins\\Office 2010\\tab.btn"
skn_menu_nocashgba.FontName = "Tahoma"
skn_menu_nocashgba.FontSize = 9
skn_menu_nocashgba.X = 77
skn_menu_nocashgba.Y = 36
skn_menu_nocashgba.Width = 128
skn_menu_nocashgba.Height = 30
skn_menu_nocashgba.ColorNormal = Math.HexColorToNumber("4C535C")
skn_menu_nocashgba.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_menu_nocashgba.ColorDown = Math.HexColorToNumber("4C535C")
skn_menu_nocashgba.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("menu_nocashgba", skn_menu_nocashgba)

skn_menu_ideas = {}
skn_menu_ideas.HighlightSound = SND_CUSTOM
skn_menu_ideas.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_menu_ideas.ClickSound = SND_CUSTOM
skn_menu_ideas.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_menu_ideas.ButtonFile = "windspro\\skins\\Office 2010\\tab.btn"
skn_menu_ideas.FontName = "Tahoma"
skn_menu_ideas.FontSize = 9
skn_menu_ideas.X = 205
skn_menu_ideas.Y = 36
skn_menu_ideas.Width = 128
skn_menu_ideas.Height = 30
skn_menu_ideas.ColorNormal = Math.HexColorToNumber("4C535C")
skn_menu_ideas.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_menu_ideas.ColorDown = Math.HexColorToNumber("4C535C")
skn_menu_ideas.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("menu_ideas", skn_menu_ideas)

skn_menu_desmume = {}
skn_menu_desmume.HighlightSound = SND_CUSTOM
skn_menu_desmume.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_menu_desmume.ClickSound = SND_CUSTOM
skn_menu_desmume.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_menu_desmume.ButtonFile = "windspro\\skins\\Office 2010\\tab.btn"
skn_menu_desmume.FontName = "Tahoma"
skn_menu_desmume.FontSize = 9
skn_menu_desmume.X = 333
skn_menu_desmume.Y = 36
skn_menu_desmume.Width = 128
skn_menu_desmume.Height = 30
skn_menu_desmume.ColorNormal = Math.HexColorToNumber("4C535C")
skn_menu_desmume.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_menu_desmume.ColorDown = Math.HexColorToNumber("4C535C")
skn_menu_desmume.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("menu_desmume", skn_menu_desmume)

skn_menu_vba = {}
skn_menu_vba.HighlightSound = SND_CUSTOM
skn_menu_vba.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_menu_vba.ClickSound = SND_CUSTOM
skn_menu_vba.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_menu_vba.ButtonFile = "windspro\\skins\\Office 2010\\tab.btn"
skn_menu_vba.FontName = "Tahoma"
skn_menu_vba.FontSize = 9
skn_menu_vba.X = 461
skn_menu_vba.Y = 36
skn_menu_vba.Width = 128
skn_menu_vba.Height = 30
skn_menu_vba.ColorNormal = Math.HexColorToNumber("4C535C")
skn_menu_vba.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_menu_vba.ColorDown = Math.HexColorToNumber("4C535C")
skn_menu_vba.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("menu_vba", skn_menu_vba)

skn_abrir = {}
skn_abrir.HighlightSound = SND_CUSTOM
skn_abrir.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_abrir.ClickSound = SND_CUSTOM
skn_abrir.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_abrir.Alignment = 0
skn_abrir.XOffset = 20
skn_abrir.ButtonFile = "windspro\\skins\\Office 2010\\mtab.btn"
skn_abrir.FontName = "Tahoma"
skn_abrir.FontSize = 9
skn_abrir.X = 4
skn_abrir.Y = 68
skn_abrir.Width = 189
skn_abrir.Height = 40
skn_abrir.ColorNormal = Math.HexColorToNumber("000000")
skn_abrir.ColorHighlight = Math.HexColorToNumber("000000")
skn_abrir.ColorDown = Math.HexColorToNumber("000000")
skn_abrir.ColorDisabled = Math.HexColorToNumber("000000")
Button.SetProperties("abrir", skn_abrir)

skn_opciones = {}
skn_opciones.HighlightSound = SND_CUSTOM
skn_opciones.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_opciones.ClickSound = SND_CUSTOM
skn_opciones.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_opciones.Alignment = 0
skn_opciones.XOffset = 20
skn_opciones.ButtonFile = "windspro\\skins\\Office 2010\\mtab.btn"
skn_opciones.FontName = "Tahoma"
skn_opciones.FontSize = 9
skn_opciones.X = 4
skn_opciones.Y = 104
skn_opciones.Width = 189
skn_opciones.Height = 40
skn_opciones.ColorNormal = Math.HexColorToNumber("000000")
skn_opciones.ColorHighlight = Math.HexColorToNumber("000000")
skn_opciones.ColorDown = Math.HexColorToNumber("000000")
skn_opciones.ColorDisabled = Math.HexColorToNumber("000000")
Button.SetProperties("opciones", skn_opciones)

skn_web = {}
skn_web.HighlightSound = SND_CUSTOM
skn_web.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_web.ClickSound = SND_CUSTOM
skn_web.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_web.Alignment = 0
skn_web.XOffset = 20
skn_web.ButtonFile = "windspro\\skins\\Office 2010\\mtab.btn"
skn_web.FontName = "Tahoma"
skn_web.FontSize = 9
skn_web.X = 4
skn_web.Y = 140
skn_web.Width = 189
skn_web.Height = 40
skn_web.ColorNormal = Math.HexColorToNumber("000000")
skn_web.ColorHighlight = Math.HexColorToNumber("000000")
skn_web.ColorDown = Math.HexColorToNumber("000000")
skn_web.ColorDisabled = Math.HexColorToNumber("000000")
Button.SetProperties("web", skn_web)

skn_salir = {}
skn_salir.HighlightSound = SND_CUSTOM
skn_salir.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_salir.ClickSound = SND_CUSTOM
skn_salir.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_salir.Alignment = 0
skn_salir.XOffset = 20
skn_salir.ButtonFile = "windspro\\skins\\Office 2010\\mtab.btn"
skn_salir.FontName = "Tahoma"
skn_salir.FontSize = 9
skn_salir.X = 4
skn_salir.Y = 176
skn_salir.Width = 189
skn_salir.Height = 40
skn_salir.ColorNormal = Math.HexColorToNumber("000000")
skn_salir.ColorHighlight = Math.HexColorToNumber("000000")
skn_salir.ColorDown = Math.HexColorToNumber("000000")
skn_salir.ColorDisabled = Math.HexColorToNumber("000000")
Button.SetProperties("salir", skn_salir)

skn_nocashzoomer = {}
skn_nocashzoomer.HighlightSound = SND_CUSTOM
skn_nocashzoomer.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_nocashzoomer.ClickSound = SND_CUSTOM
skn_nocashzoomer.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_nocashzoomer.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_nocashzoomer.FontName = "Tahoma"
skn_nocashzoomer.FontSize = 9
skn_nocashzoomer.X = 77
skn_nocashzoomer.Y = 66
skn_nocashzoomer.Width = 128
skn_nocashzoomer.Height = 30
skn_nocashzoomer.ColorNormal = Math.HexColorToNumber("4C535C")
skn_nocashzoomer.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_nocashzoomer.ColorDown = Math.HexColorToNumber("4C535C")
skn_nocashzoomer.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("nocashzoomer", skn_nocashzoomer)

skn_nocashgba = {}
skn_nocashgba.HighlightSound = SND_CUSTOM
skn_nocashgba.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_nocashgba.ClickSound = SND_CUSTOM
skn_nocashgba.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_nocashgba.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_nocashgba.FontName = "Tahoma"
skn_nocashgba.FontSize = 9
skn_nocashgba.X = 77
skn_nocashgba.Y = 96
skn_nocashgba.Width = 128
skn_nocashgba.Height = 30
skn_nocashgba.ColorNormal = Math.HexColorToNumber("4C535C")
skn_nocashgba.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_nocashgba.ColorDown = Math.HexColorToNumber("4C535C")
skn_nocashgba.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("nocashgba", skn_nocashgba)

skn_ngzoom = {}
skn_ngzoom.HighlightSound = SND_CUSTOM
skn_ngzoom.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_ngzoom.ClickSound = SND_CUSTOM
skn_ngzoom.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_ngzoom.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_ngzoom.FontName = "Tahoma"
skn_ngzoom.FontSize = 9
skn_ngzoom.X = 77
skn_ngzoom.Y = 126
skn_ngzoom.Width = 128
skn_ngzoom.Height = 30
skn_ngzoom.ColorNormal = Math.HexColorToNumber("4C535C")
skn_ngzoom.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_ngzoom.ColorDown = Math.HexColorToNumber("4C535C")
skn_ngzoom.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("ngzoom", skn_ngzoom)

skn_nocashmooz = {}
skn_nocashmooz.HighlightSound = SND_CUSTOM
skn_nocashmooz.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_nocashmooz.ClickSound = SND_CUSTOM
skn_nocashmooz.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_nocashmooz.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_nocashmooz.FontName = "Tahoma"
skn_nocashmooz.FontSize = 9
skn_nocashmooz.X = 77
skn_nocashmooz.Y = 156
skn_nocashmooz.Width = 128
skn_nocashmooz.Height = 30
skn_nocashmooz.ColorNormal = Math.HexColorToNumber("4C535C")
skn_nocashmooz.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_nocashmooz.ColorDown = Math.HexColorToNumber("4C535C")
skn_nocashmooz.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("nocashmooz", skn_nocashmooz)

skn_noz = {}
skn_noz.HighlightSound = SND_CUSTOM
skn_noz.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_noz.ClickSound = SND_CUSTOM
skn_noz.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_noz.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_noz.FontName = "Tahoma"
skn_noz.FontSize = 9
skn_noz.X = 77
skn_noz.Y = 186
skn_noz.Width = 128
skn_noz.Height = 30
skn_noz.ColorNormal = Math.HexColorToNumber("4C535C")
skn_noz.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_noz.ColorDown = Math.HexColorToNumber("4C535C")
skn_noz.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("noz", skn_noz)

skn_myzoom = {}
skn_myzoom.HighlightSound = SND_CUSTOM
skn_myzoom.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_myzoom.ClickSound = SND_CUSTOM
skn_myzoom.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_myzoom.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_myzoom.FontName = "Tahoma"
skn_myzoom.FontSize = 9
skn_myzoom.X = 77
skn_myzoom.Y = 216
skn_myzoom.Width = 128
skn_myzoom.Height = 30
skn_myzoom.ColorNormal = Math.HexColorToNumber("4C535C")
skn_myzoom.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_myzoom.ColorDown = Math.HexColorToNumber("4C535C")
skn_myzoom.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("myzoom", skn_myzoom)

skn_nocashgba2x = {}
skn_nocashgba2x.HighlightSound = SND_CUSTOM
skn_nocashgba2x.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_nocashgba2x.ClickSound = SND_CUSTOM
skn_nocashgba2x.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_nocashgba2x.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_nocashgba2x.FontName = "Tahoma"
skn_nocashgba2x.FontSize = 9
skn_nocashgba2x.X = 77
skn_nocashgba2x.Y = 246
skn_nocashgba2x.Width = 128
skn_nocashgba2x.Height = 30
skn_nocashgba2x.ColorNormal = Math.HexColorToNumber("4C535C")
skn_nocashgba2x.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_nocashgba2x.ColorDown = Math.HexColorToNumber("4C535C")
skn_nocashgba2x.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("nocashgba2x", skn_nocashgba2x)

skn_ideas = {}
skn_ideas.HighlightSound = SND_CUSTOM
skn_ideas.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_ideas.ClickSound = SND_CUSTOM
skn_ideas.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_ideas.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_ideas.FontName = "Tahoma"
skn_ideas.FontSize = 9
skn_ideas.X = 205
skn_ideas.Y = 66
skn_ideas.Width = 128
skn_ideas.Height = 30
skn_ideas.ColorNormal = Math.HexColorToNumber("4C535C")
skn_ideas.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_ideas.ColorDown = Math.HexColorToNumber("4C535C")
skn_ideas.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("ideas", skn_ideas)

skn_desmume = {}
skn_desmume.HighlightSound = SND_CUSTOM
skn_desmume.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_desmume.ClickSound = SND_CUSTOM
skn_desmume.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_desmume.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_desmume.FontName = "Tahoma"
skn_desmume.FontSize = 9
skn_desmume.X = 333
skn_desmume.Y = 66
skn_desmume.Width = 128
skn_desmume.Height = 30
skn_desmume.ColorNormal = Math.HexColorToNumber("4C535C")
skn_desmume.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_desmume.ColorDown = Math.HexColorToNumber("4C535C")
skn_desmume.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("desmume", skn_desmume)

skn_vbalink = {}
skn_vbalink.HighlightSound = SND_CUSTOM
skn_vbalink.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_vbalink.ClickSound = SND_CUSTOM
skn_vbalink.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_vbalink.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_vbalink.FontName = "Tahoma"
skn_vbalink.FontSize = 9
skn_vbalink.X = 461
skn_vbalink.Y = 66
skn_vbalink.Width = 128
skn_vbalink.Height = 30
skn_vbalink.ColorNormal = Math.HexColorToNumber("4C535C")
skn_vbalink.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_vbalink.ColorDown = Math.HexColorToNumber("4C535C")
skn_vbalink.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("vbalink", skn_vbalink)

skn_vbam = {}
skn_vbam.HighlightSound = SND_CUSTOM
skn_vbam.HighlightSoundFile = "windspro\\skins\\Office 2010\\highlight.wav"
skn_vbam.ClickSound = SND_CUSTOM
skn_vbam.ClickSoundFile = "windspro\\skins\\Office 2010\\click.wav"
skn_vbam.ButtonFile = "windspro\\skins\\Office 2010\\etab.btn"
skn_vbam.FontName = "Tahoma"
skn_vbam.FontSize = 9
skn_vbam.X = 461
skn_vbam.Y = 96
skn_vbam.Width = 128
skn_vbam.Height = 30
skn_vbam.ColorNormal = Math.HexColorToNumber("4C535C")
skn_vbam.ColorHighlight = Math.HexColorToNumber("4C535C")
skn_vbam.ColorDown = Math.HexColorToNumber("4C535C")
skn_vbam.ColorDisabled = Math.HexColorToNumber("4C535C")
Button.SetProperties("vbam", skn_vbam)