#!/bin/sh
sudo apt-get remove -y -f dosbox fs-uae fs-uae-arcade fs-uae-launcher hatari higan mednafen nestopia pcsxr stella virtualjaguar visualboyadvance yabause yabause-common yabause-qt fceux desmume mupen64plus-qt dolphin-emu vbaexpress zsnes-dbg:i386 pcsx2:i386 mgba-qt
sudo apt autoremove -y -f
sudo rm -r /usr/games/linuxdspro/
sudo rm /usr/bin/linuxdspro
sudo rm /usr/share/applications/linuxdspro.desktop
sudo rm /usr/share/pixmaps/linuxdspro.png
echo --------------------------------------------------------------------------------
echo Gracias por usar LinuxDS PRO. Todos los emuladores han sido desinstalados.
