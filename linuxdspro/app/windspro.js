(function () {
    //document.getElementById('search').focus();

    function RunProgram(exe, parameters) {
        var child_process = require('child_process').execFile;
        var options = {};

        if (parameters.length == 0) {
            child_process(exe, options, function (err, data) { console.log(err); console.log(data.toString()); });
        } else {
            child_process(exe, parameters, options, function (err, data) { console.log(err); console.log(data.toString()); });
        }
    }

    function OpenFolder(path) {
        const shell = require('electron').shell;
        shell.showItemInFolder(path);
    }

    function OpenSubFolder(path) {
        var remote = require('electron').remote;
        argv = remote.getGlobal('sharedObject').argv;

        OpenFolder(argv[0].substring(0, argv[0].length - exeName.length) + path);
    }

    function OpenURL(url) {
        const shell = require('electron').shell;
        shell.openExternal(url);
    }

    var app = angular.module('windspro', ['ngAnimate']);

    function Search(s, index) {
        hasAll = true;
        for (var i = 0; i < s.length; i++) {
            hasAll = (emulators[index].name.toLowerCase().indexOf(s[i]) != -1) || (emulators[index].category.toLowerCase().indexOf(s[i]) != -1);
            if (!hasAll) {
                return false;
            }
        }
        return hasAll;
    }

    var remote = require('electron').remote;
    argv = remote.getGlobal('sharedObject').argv;
    fileName = '',
        fileExt = '';

    if (argv.length > 1) {
        fileName = argv[1];
        fileExt = '(' + fileName.substring(fileName.lastIndexOf('.') + 1, fileName.length) + ')';
    }

    String.prototype.replaceAll = function (search, replacement) {
        var target = this;
        return target.replace(new RegExp(search, 'g'), replacement);
    };

    app.controller('EmulatorController', ['$http', '$scope', function ($http, $scope) {
        document.title = 'LinuxDS PRO ' + version;
        var vm = this;
        this.res = translations[lang];
        this.alpha = 0.7;
        this.changeBackground = function (image) {
            document.getElementById('background').style.backgroundImage = 'url(\'file:///' + image.replaceAll('\\\\', '/') + '\')';
        };
        this.saveBackground = function (image) {
            localStorage.setItem('background', image);
        };
        this.loadBackground = function () {
            var image = localStorage.getItem('background');
            if (image) {
                var fs = require('fs');
                fs.stat(image, (err) => {
                    if (!err) {
                        this.changeBackground(image);
                    }
                });
            }
        };
        this.loadBackground();
        this.changeAlpha = function (alpha) {
            //document.getElementById('table').style.backgroundColor = 'rgba(255,255,255,' + alpha + ')';
            //document.getElementById('header').style.backgroundColor = 'rgba(255,255,255,' + (alpha + 0.2) + ')';
        };
        this.saveAlpha = function (alpha) {
            localStorage.setItem('alpha', alpha);
        };
        this.loadAlpha = function () {
            var alpha = localStorage.getItem('alpha');
            if (alpha) {
                this.alpha = parseFloat(alpha);
                this.changeAlpha(alpha);
            }
        };
        this.loadAlpha();
        this.openDialog = function () {
            const { dialog } = require('electron').remote;
            dialog.showOpenDialog({ filters: [{ name: 'Images', extensions: ['jpg', 'png', 'gif'] },], properties: ['openFile'] }).then((fileNames) => {
                if (fileNames.filePaths.length > 0) {
                    console.log(fileNames.filePaths[0]);
                    this.saveBackground(fileNames.filePaths[0]);
                    this.changeBackground(fileNames.filePaths[0]);
                } else {
                    console.log('Cancelar');
                }
            });
        };
        this.openROMDialog = function () {
            const { dialog } = require('electron').remote;
            dialog.showOpenDialog({ filters: [{ name: 'ROM', extensions: ['*'] },], properties: ['openFile'] }).then((fileNames) => {
                if (fileNames.filePaths.length > 0) {
                    console.log(fileNames.filePaths[0]);
                    fileName = fileNames.filePaths[0];
                    fileExt = '(' + fileName.substring(fileName.lastIndexOf('.') + 1, fileName.length) + ')';
                    vm.fileName = fileName;
                    vm.fileExt = fileExt;
                    $scope.$apply();
                } else {
                    console.log('Cancelar');
                }
            });
        };
        this.changeColor = function () {
            this.alpha = this.alpha + 0.05;
            if (this.alpha > 1) {
                this.alpha = 0.7;
            }
            this.saveAlpha(this.alpha);
            this.changeAlpha(this.alpha);
        };
        this.fileName = fileName;
        this.fileExt = fileExt;
        this.closeFileName = function () {
            this.fileName = '';
            this.fileExt = '';
        };
        this.searchText = '';
        this.search = function (text) {
            this.searchText = text;
        };
        this.searchFocusedDirty = function () {
            return this.searchText != '';
        };
        this.isVisible = function (index) {
            var hasText, hasExt;
            if (this.searchText == '') {
                hasText = true;
            } else {
                hasText = Search(this.searchText.toLowerCase().split(' '), index);
            }
            if (this.fileExt == '') {
                hasExt = true;
            } else {
                hasExt = this.emulators[index].extensions.indexOf(this.fileExt.toLowerCase()) != -1;
            }
            return (hasText && hasExt && this.emulators[index].exists);
        };
        this.emulators = emulators;
        this.categories = categories;
        this.run = function (index) {
            if (this.fileName === '') {
                RunProgram(emulators[index].executable, []);
            } else {
                if (emulators[index].hasOwnProperty('parameters')) {
                    RunProgram(emulators[index].executable, emulators[index].parameters(this.fileName));
                } else {
                    RunProgram(emulators[index].executable, [this.fileName]);
                }
            }
        }
        this.openForum = function () {
            window.location.href = './forum.html';
        };

        this.hay_actualizaciones = false;

        var updates_JSON = {};

        this.actualizar = function () {
            OpenURL(updates_JSON.url);
        };

        this.notifyMe = function () {
            const notification = new window.Notification(this.nueva_version, {
                body: this.res.nueva
            })

            notification.onclick = () => this.actualizar()
            notification.onclose = () => console.log('Closed')
        }

        /*$http.get(updatesURL).then(response => {
            updates_JSON = response.data;
            if (updates_JSON.version > version) {
                this.nueva_version = updates_JSON.name;
                this.hay_actualizaciones = true;
                this.notifyMe()
            }
        });*/

        this.setTheme = function (theme, firstTime) {
            if (!firstTime)
            document.documentElement.classList.add('color-theme-in-transition')
            document.documentElement.setAttribute('data-theme', theme)
            if (!firstTime)
            window.setTimeout(function () {
                document.documentElement.classList.remove('color-theme-in-transition')
            }, 1000)
        }

        this.switchTheme = function () {
            var theme = localStorage.getItem('theme');
            if (theme == 'dark') {
                this.setTheme('', false);
                localStorage.setItem('theme', '');
            } else {
                this.setTheme('dark', false);
                localStorage.setItem('theme', 'dark');
            }
        }

        this.loadTheme = function (firstTime) {
            var theme = localStorage.getItem('theme');
            this.setTheme(theme, firstTime);
        }

        this.openWebsite = function () {
            OpenURL('https://windsprocentral.blogspot.com/')
        }

        const ipcRenderer = require('electron').ipcRenderer;
        ipcRenderer.on('theme', () => {
            this.switchTheme();
        })

        ipcRenderer.on('background', () => {
            this.openDialog();
        })

        ipcRenderer.on('open', () => {
            this.openROMDialog();
        })

        this.sortEmu = function () {
            this.emulators.sort((a, b) => {
                if (a.fav && !b.fav)
                    return -1
                if (!a.fav && b.fav)
                    return 1
                if (a.name > b.name)
                    return 1
                if (a.name < b.name)
                    return -1
                return 0
            })
        }

        this.setFav = function (emu) {
            emu.fav = true;
            localStorage.setItem('emu_' + emu.name, 'T');
            this.sortEmu();
        }

        this.unsetFav = function (emu) {
            emu.fav = false;
            localStorage.removeItem('emu_' + emu.name);
            this.sortEmu();
        }

        this.translate = function (translation) {
            return translations[lang][translation];
        }

        this.sortEmu();
        this.loadTheme(true);
    }]);

})();
