# WinDS PRO
An open source frontend for launching emulators.

# Sources
The folder windspro contains:
* electron: sources of the Electron based project
* project-ams: sources of the AutoPlay Media Studio based project
* project: sources of the Lazarus based project
* setup: the Inno Setup script to generate an installer

The folder windsproapps contains:
* electron: sources of the Electron based project
* project: sources of the Lazarus based project
* setup: the Inno Setup script to generate an installer

The folder windsprozero contains:
* WinDS PRO Zero: Visual Studio C# based project

The folder linuxdspro contains:
* An installer script for Ubuntu emulators

# Each project
* WinDS PRO contains only emulators for Nintendo handheld devices. The installer handles file-associations for each type.
* WinDS PRO Apps contains all kind of emulators. The projects are very similar or identical to WinDS PRO.
* WinDS PRO Zero contains all kind of emulators, is a web based frontend, working as a web explorer that manages downloaded and installed apps.
* LinuxDS PRO contains all kind of emulators, is a script that downloads and installs emulators from official and third party sources.

# License
GPL v3, you can modify the source code and distribute resulting binaries, but you need to keep it open source. Electron, Lazarus, AutoPlay Media Studio, Inno Setup and Visual Studio are just the tools we use, you need to follow any licenses that are related to these products individually.

# About all emulators that comes with WinDS PRO
We choose only free emulators available freely on internet, no paid emulators are included in our bundles. We use official builds or clean svn/git builds. If you want your emulator removed please contact us filling a bug report.
