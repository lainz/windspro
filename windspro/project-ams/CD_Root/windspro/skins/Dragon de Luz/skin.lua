---------------------------------------------------------------
---------------------------------------------------------------
windsproskin_nombre = "Dragon de Luz"
---------------------------------------------------------------
windsproskin_sonido_highlight = ""
windsproskin_sonido_click = ""
---------------------------------------------------------------
windsproskin_fondo = "background.png"
windsproskin_barra = "window.png"
---------------------------------------------------------------
windsproskin_mostrar_barra = true
windsproskin_mostrar_cambiar_fondo = false
---------------------------------------------------------------
windsproskin_boton = "button.btn"
windsproskin_menu = "menu.btn"
windsproskin_extra = "cerrar.btn"
---------------------------------------------------------------
windsproskin_texto_cerrar = ""
windsproskin_texto_fondo = "+"
---------------------------------------------------------------
windsproskin_fuente = "Roboto Light"
windsproskin_fuente_size = 11
---------------------------------------------------------------
windsproskin_color_normal = Math.RGBToNumber(255, 255, 255)
windsproskin_color_highlight = Math.RGBToNumber(255, 255, 255)
windsproskin_color_down = Math.RGBToNumber(255, 255, 255)
windsproskin_color_disabled = Math.RGBToNumber(255, 255, 255)
---------------------------------------------------------------
---------------------------------------------------------------

if picture == "predeterminado" then
  skn_windspro = {}
  skn_windspro.ImageFilename = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_fondo
  Application.SetPageProperties("WinDS PRO", skn_windspro)
end

System.RegisterFont(_SourceFolder.."windspro\\skins\\"..windsproskin_nombre.."\\".."Roboto-Light.ttf", "Roboto Light", true)

---------------------------------------------------------------

skn_barra = {}
skn_barra.ImageFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_barra
skn_barra.Width = 630
skn_barra.Height = 384
skn_barra.X = 0
skn_barra.Y = 0
skn_barra.Opacity = 255
Image.SetProperties("barra", skn_barra)

Image.SetVisible("barra", windsproskin_mostrar_barra)

---------------------------------------------------------------

skn_fondo = {}
skn_fondo.Width = 630
skn_fondo.Height = 348
skn_fondo.X = 0
skn_fondo.Y = 36
Hotspot.SetProperties("fondo", skn_fondo)

---------------------------------------------------------------

skn_skin = {}
skn_skin.HighlightSound = SND_CUSTOM
skn_skin.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_skin.ClickSound = SND_CUSTOM
skn_skin.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_skin.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_extra
skn_skin.X = 594
skn_skin.Y = 0
skn_skin.Width = 36
skn_skin.Height = 36
skn_skin.Text = windsproskin_texto_fondo
skn_skin.ColorNormal = windsproskin_color_normal
skn_skin.ColorHighlight = windsproskin_color_highlight
skn_skin.ColorDown = windsproskin_color_down
skn_skin.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("cambiarfondo", skn_skin)

Button.SetVisible("cambiarfondo", windsproskin_mostrar_cambiar_fondo)

if windsproskin_mostrar_cambiar_fondo == true then
  Button.SetVisible("cerrar", false)
else
  Button.SetVisible("cerrar", true)
  skn_skin.Text = windsproskin_texto_cerrar
  skn_skin.FontName = windsproskin_fuente
  skn_skin.FontSize = windsproskin_fuente_size
  Button.SetProperties("cerrar", skn_skin)
end

---------------------------------------------------------------

skn_menu_windspro = {}
skn_menu_windspro.Text = ''
skn_menu_windspro.HighlightSound = SND_CUSTOM
skn_menu_windspro.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_menu_windspro.ClickSound = SND_CUSTOM
skn_menu_windspro.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_menu_windspro.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_menu
skn_menu_windspro.FontName = windsproskin_fuente
skn_menu_windspro.FontSize = windsproskin_fuente_size
skn_menu_windspro.X = 5
skn_menu_windspro.Y = 5
skn_menu_windspro.Width = 34
skn_menu_windspro.Height = 34
skn_menu_windspro.ColorNormal = windsproskin_color_normal
skn_menu_windspro.ColorHighlight = windsproskin_color_highlight
skn_menu_windspro.ColorDown = windsproskin_color_down
skn_menu_windspro.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("menu_windspro", skn_menu_windspro)

skn_menu_nocashgba = {}
skn_menu_nocashgba.HighlightSound = SND_CUSTOM
skn_menu_nocashgba.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_menu_nocashgba.ClickSound = SND_CUSTOM
skn_menu_nocashgba.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_menu_nocashgba.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_menu_nocashgba.FontName = windsproskin_fuente
skn_menu_nocashgba.FontSize = windsproskin_fuente_size
skn_menu_nocashgba.X = 10
skn_menu_nocashgba.Y = 338
skn_menu_nocashgba.Width = 139
skn_menu_nocashgba.Height = 36
skn_menu_nocashgba.ColorNormal = windsproskin_color_normal
skn_menu_nocashgba.ColorHighlight = windsproskin_color_highlight
skn_menu_nocashgba.ColorDown = windsproskin_color_down
skn_menu_nocashgba.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("menu_nocashgba", skn_menu_nocashgba)

skn_menu_ideas = {}
skn_menu_ideas.HighlightSound = SND_CUSTOM
skn_menu_ideas.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_menu_ideas.ClickSound = SND_CUSTOM
skn_menu_ideas.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_menu_ideas.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_menu_ideas.FontName = windsproskin_fuente
skn_menu_ideas.FontSize = windsproskin_fuente_size
skn_menu_ideas.X = 167
skn_menu_ideas.Y = 338
skn_menu_ideas.Width = 139
skn_menu_ideas.Height = 36
skn_menu_ideas.ColorNormal = windsproskin_color_normal
skn_menu_ideas.ColorHighlight = windsproskin_color_highlight
skn_menu_ideas.ColorDown = windsproskin_color_down
skn_menu_ideas.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("menu_ideas", skn_menu_ideas)

skn_menu_desmume = {}
skn_menu_desmume.HighlightSound = SND_CUSTOM
skn_menu_desmume.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_menu_desmume.ClickSound = SND_CUSTOM
skn_menu_desmume.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_menu_desmume.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_menu_desmume.FontName = windsproskin_fuente
skn_menu_desmume.FontSize = windsproskin_fuente_size
skn_menu_desmume.X = 324
skn_menu_desmume.Y = 338
skn_menu_desmume.Width = 139
skn_menu_desmume.Height = 36
skn_menu_desmume.ColorNormal = windsproskin_color_normal
skn_menu_desmume.ColorHighlight = windsproskin_color_highlight
skn_menu_desmume.ColorDown = windsproskin_color_down
skn_menu_desmume.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("menu_desmume", skn_menu_desmume)

skn_menu_vba = {}
skn_menu_vba.HighlightSound = SND_CUSTOM
skn_menu_vba.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_menu_vba.ClickSound = SND_CUSTOM
skn_menu_vba.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_menu_vba.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_menu_vba.FontName = windsproskin_fuente
skn_menu_vba.FontSize = windsproskin_fuente_size
skn_menu_vba.X = 481
skn_menu_vba.Y = 338
skn_menu_vba.Width = 139
skn_menu_vba.Height = 36
skn_menu_vba.ColorNormal = windsproskin_color_normal
skn_menu_vba.ColorHighlight = windsproskin_color_highlight
skn_menu_vba.ColorDown = windsproskin_color_down
skn_menu_vba.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("menu_vba", skn_menu_vba)

---------------------------------------------------------------

skn_abrir = {}
skn_abrir.HighlightSound = SND_CUSTOM
skn_abrir.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_abrir.ClickSound = SND_CUSTOM
skn_abrir.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_abrir.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_abrir.FontName = windsproskin_fuente
skn_abrir.FontSize = windsproskin_fuente_size
skn_abrir.X = 0
skn_abrir.Y = 36
skn_abrir.Width = 139
skn_abrir.Height = 36
skn_abrir.ColorNormal = windsproskin_color_normal
skn_abrir.ColorHighlight = windsproskin_color_highlight
skn_abrir.ColorDown = windsproskin_color_down
skn_abrir.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("abrir", skn_abrir)

skn_opciones = {}
skn_opciones.HighlightSound = SND_CUSTOM
skn_opciones.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_opciones.ClickSound = SND_CUSTOM
skn_opciones.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_opciones.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_opciones.FontName = windsproskin_fuente
skn_opciones.FontSize = windsproskin_fuente_size
skn_opciones.X = 0
skn_opciones.Y = 72
skn_opciones.Width = 139
skn_opciones.Height = 36
skn_opciones.ColorNormal = windsproskin_color_normal
skn_opciones.ColorHighlight = windsproskin_color_highlight
skn_opciones.ColorDown = windsproskin_color_down
skn_opciones.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("opciones", skn_opciones)

skn_web = {}
skn_web.HighlightSound = SND_CUSTOM
skn_web.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_web.ClickSound = SND_CUSTOM
skn_web.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_web.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_web.FontName = windsproskin_fuente
skn_web.FontSize = windsproskin_fuente_size
skn_web.X = 0
skn_web.Y = 108
skn_web.Width = 139
skn_web.Height = 36
skn_web.ColorNormal = windsproskin_color_normal
skn_web.ColorHighlight = windsproskin_color_highlight
skn_web.ColorDown = windsproskin_color_down
skn_web.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("web", skn_web)

skn_salir = {}
skn_salir.HighlightSound = SND_CUSTOM
skn_salir.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_salir.ClickSound = SND_CUSTOM
skn_salir.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_salir.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_salir.FontName = windsproskin_fuente
skn_salir.FontSize = windsproskin_fuente_size
skn_salir.X = 0
skn_salir.Y = 144
skn_salir.Width = 139
skn_salir.Height = 36
skn_salir.ColorNormal = windsproskin_color_normal
skn_salir.ColorHighlight = windsproskin_color_highlight
skn_salir.ColorDown = windsproskin_color_down
skn_salir.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("salir", skn_salir)

---------------------------------------------------------------

skn_nocashzoomer = {}
skn_nocashzoomer.HighlightSound = SND_CUSTOM
skn_nocashzoomer.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_nocashzoomer.ClickSound = SND_CUSTOM
skn_nocashzoomer.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_nocashzoomer.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_nocashzoomer.FontName = windsproskin_fuente
skn_nocashzoomer.FontSize = windsproskin_fuente_size
skn_nocashzoomer.X = 10
skn_nocashzoomer.Y = 44
skn_nocashzoomer.Width = 139
skn_nocashzoomer.Height = 36
skn_nocashzoomer.ColorNormal = windsproskin_color_normal
skn_nocashzoomer.ColorHighlight = windsproskin_color_highlight
skn_nocashzoomer.ColorDown = windsproskin_color_down
skn_nocashzoomer.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("nocashzoomer", skn_nocashzoomer)

skn_nocashgba = {}
skn_nocashgba.HighlightSound = SND_CUSTOM
skn_nocashgba.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_nocashgba.ClickSound = SND_CUSTOM
skn_nocashgba.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_nocashgba.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_nocashgba.FontName = windsproskin_fuente
skn_nocashgba.FontSize = windsproskin_fuente_size
skn_nocashgba.X = 10
skn_nocashgba.Y = 86
skn_nocashgba.Width = 139
skn_nocashgba.Height = 36
skn_nocashgba.ColorNormal = windsproskin_color_normal
skn_nocashgba.ColorHighlight = windsproskin_color_highlight
skn_nocashgba.ColorDown = windsproskin_color_down
skn_nocashgba.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("nocashgba", skn_nocashgba)

skn_ngzoom = {}
skn_ngzoom.HighlightSound = SND_CUSTOM
skn_ngzoom.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_ngzoom.ClickSound = SND_CUSTOM
skn_ngzoom.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_ngzoom.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_ngzoom.FontName = windsproskin_fuente
skn_ngzoom.FontSize = windsproskin_fuente_size
skn_ngzoom.X = 10
skn_ngzoom.Y = 128
skn_ngzoom.Width = 139
skn_ngzoom.Height = 36
skn_ngzoom.ColorNormal = windsproskin_color_normal
skn_ngzoom.ColorHighlight = windsproskin_color_highlight
skn_ngzoom.ColorDown = windsproskin_color_down
skn_ngzoom.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("ngzoom", skn_ngzoom)

skn_nocashmooz = {}
skn_nocashmooz.HighlightSound = SND_CUSTOM
skn_nocashmooz.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_nocashmooz.ClickSound = SND_CUSTOM
skn_nocashmooz.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_nocashmooz.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_nocashmooz.FontName = windsproskin_fuente
skn_nocashmooz.FontSize = windsproskin_fuente_size
skn_nocashmooz.X = 10
skn_nocashmooz.Y = 170
skn_nocashmooz.Width = 139
skn_nocashmooz.Height = 36
skn_nocashmooz.ColorNormal = windsproskin_color_normal
skn_nocashmooz.ColorHighlight = windsproskin_color_highlight
skn_nocashmooz.ColorDown = windsproskin_color_down
skn_nocashmooz.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("nocashmooz", skn_nocashmooz)

skn_noz = {} 
skn_noz.HighlightSound = SND_CUSTOM
skn_noz.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_noz.ClickSound = SND_CUSTOM
skn_noz.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_noz.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_noz.FontName = windsproskin_fuente
skn_noz.FontSize = windsproskin_fuente_size
skn_noz.X = 10
skn_noz.Y = 212
skn_noz.Width = 139
skn_noz.Height = 36
skn_noz.ColorNormal = windsproskin_color_normal
skn_noz.ColorHighlight = windsproskin_color_highlight
skn_noz.ColorDown = windsproskin_color_down
skn_noz.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("noz", skn_noz)

skn_myzoom = {}
skn_myzoom.HighlightSound = SND_CUSTOM
skn_myzoom.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_myzoom.ClickSound = SND_CUSTOM
skn_myzoom.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_myzoom.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_myzoom.FontName = windsproskin_fuente
skn_myzoom.FontSize = windsproskin_fuente_size
skn_myzoom.X = 10
skn_myzoom.Y = 254
skn_myzoom.Width = 139
skn_myzoom.Height = 36
skn_myzoom.ColorNormal = windsproskin_color_normal
skn_myzoom.ColorHighlight = windsproskin_color_highlight
skn_myzoom.ColorDown = windsproskin_color_down
skn_myzoom.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("myzoom", skn_myzoom)

skn_nocashgba2x = {}
skn_nocashgba2x.HighlightSound = SND_CUSTOM
skn_nocashgba2x.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_nocashgba2x.ClickSound = SND_CUSTOM
skn_nocashgba2x.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_nocashgba2x.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_nocashgba2x.FontName = windsproskin_fuente
skn_nocashgba2x.FontSize = windsproskin_fuente_size
skn_nocashgba2x.X = 10
skn_nocashgba2x.Y = 296
skn_nocashgba2x.Width = 139
skn_nocashgba2x.Height = 36
skn_nocashgba2x.ColorNormal = windsproskin_color_normal
skn_nocashgba2x.ColorHighlight = windsproskin_color_highlight
skn_nocashgba2x.ColorDown = windsproskin_color_down
skn_nocashgba2x.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("nocashgba2x", skn_nocashgba2x)

skn_ideas = {}
skn_ideas.HighlightSound = SND_CUSTOM
skn_ideas.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_ideas.ClickSound = SND_CUSTOM
skn_ideas.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_ideas.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_ideas.FontName = windsproskin_fuente
skn_ideas.FontSize = windsproskin_fuente_size
skn_ideas.X = 167
skn_ideas.Y = 296
skn_ideas.Width = 139
skn_ideas.Height = 36
skn_ideas.ColorNormal = windsproskin_color_normal
skn_ideas.ColorHighlight = windsproskin_color_highlight
skn_ideas.ColorDown = windsproskin_color_down
skn_ideas.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("ideas", skn_ideas)

skn_desmume = {}
skn_desmume.HighlightSound = SND_CUSTOM
skn_desmume.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_desmume.ClickSound = SND_CUSTOM
skn_desmume.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_desmume.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_desmume.FontName = windsproskin_fuente
skn_desmume.FontSize = windsproskin_fuente_size
skn_desmume.X = 324
skn_desmume.Y = 297
skn_desmume.Width = 139
skn_desmume.Height = 36
skn_desmume.ColorNormal = windsproskin_color_normal
skn_desmume.ColorHighlight = windsproskin_color_highlight
skn_desmume.ColorDown = windsproskin_color_down
skn_desmume.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("desmume", skn_desmume)

skn_vbalink = {}
skn_vbalink.HighlightSound = SND_CUSTOM
skn_vbalink.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_vbalink.ClickSound = SND_CUSTOM
skn_vbalink.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_vbalink.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_vbalink.FontName = windsproskin_fuente
skn_vbalink.FontSize = windsproskin_fuente_size
skn_vbalink.X = 481
skn_vbalink.Y = 254
skn_vbalink.Width = 139
skn_vbalink.Height = 36
skn_vbalink.ColorNormal = windsproskin_color_normal
skn_vbalink.ColorHighlight = windsproskin_color_highlight
skn_vbalink.ColorDown = windsproskin_color_down
skn_vbalink.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("vbalink", skn_vbalink)

skn_vbam = {}
skn_vbam.HighlightSound = SND_CUSTOM
skn_vbam.HighlightSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_highlight
skn_vbam.ClickSound = SND_CUSTOM
skn_vbam.ClickSoundFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_sonido_click
skn_vbam.ButtonFile = "windspro\\skins\\"..windsproskin_nombre.."\\"..windsproskin_boton
skn_vbam.FontName = windsproskin_fuente
skn_vbam.FontSize = windsproskin_fuente_size
skn_vbam.X = 481
skn_vbam.Y = 296
skn_vbam.Width = 139
skn_vbam.Height = 36
skn_vbam.ColorNormal = windsproskin_color_normal
skn_vbam.ColorHighlight = windsproskin_color_highlight
skn_vbam.ColorDown = windsproskin_color_down
skn_vbam.ColorDisabled = windsproskin_color_disabled
Button.SetProperties("vbam", skn_vbam)
