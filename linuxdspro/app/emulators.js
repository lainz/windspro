const exeName = 'linuxdspro';
const version = '2020.11.21';
const updatesURL = '';
//const emuFolder = 'emu\\\\';

var systems = {
    Atari5200: '(a52)',
    Atari7800: '(a78)',
    AtariJaguar: '(j64)',
    AtariLynx: '(lnx)',
    BandaiWonderSwanColor: '(wsc)',
    BandaiWonderSwan: '(ws)',
    ColecoVision: '(col)',
    Commodore64PP: '(g64)(nib)',
    Commodore64Tapes: '(tap)',
    Commodore64: '(102)(bin)(crt)(u2)(u3)(u4)(u5)(ua2)(ub3)',
    CommodorePlus4: '(bin)(u24)(u25)(u4)',
    CommodoreVIC20: '(20)(40)(60)(70)(80)(a0)(b0)(bin)(ub3)(ud7)(ue1)',
    MSX2: '(rom)',
    MSX: '(rom)',
    NECPCEngine: '(pce)',
    NECSuperGrafx: '(pce)(sgx)',
    NintendoFDS: '(bin)(fds)',
    NintendoGBA: '(agb)(bin)(elf)(gba)(mb)',
    NintendoGBC: '(cgb)(gbc)',
    NintendoGB: '(gb)(gmb)(sgb)',
    Nintendo3DS: '(3ds)(3dsx)(cci)(cxi)(csu)',
    Nintendo64: '(n64)(v64)(z64)(rom)(jap)(pal)(usa)',
    NintendoDS: '(dsi)(nds)(pme)(srl)',
    NintendoNES: '(nes)(nsf)(unf)(bin)',
    NintendoGameCube: '(iso)',
    NintendoWii: '(iso)',
    NintendoPokemonMini: '(min)',
    NintendoSNES: '(bin)(smc)(fig)(sfc)(swc)',
    NintendoVirtualBoy: '(vb)(vboy)',
    Sega32X: '(32x)(bin)',
    SegaDreamcast: '(iso)',
    SegaGameGear: '(gg)(sms)',
    SegaMasterSystem: '(sms)(sg)(sc)(mv)',
    SegaMegaDrive: '(md)(smd)(gen)',
    SegaPICO: '(md)',
    SegaSaturn: '(iso)',
    SegaSG1000: '(sc)(sg)',
    NeoGeoPocketColor: '(ngc)(ngp)',
    NeoGeoPocket: '(ngp)',
    SonyPlayStation2: '(iso)',
    SonyPlayStation3: '(iso)',
    SonyPlayStationPortable: '(iso)',
    SonyPlayStation: '(iso)(bin)'
}

var categories = [
    {
        name: 'All',
        search: ''
    },
    {
        name: 'Atari',
        search: 'Atari'
    },
    {
        name: 'Multiplatform',
        search: 'Multiplatform'
    },
    {
        name: 'Commodore',
        search: 'Commodore'
    },
    {
        name: 'Nintendo',
        search: 'Nintendo'
    },
    {
        name: 'Microsoft',
        search: 'Microsoft'
    },
    {
        name: 'Sega',
        search: 'Sega'
    },
    {
        name: 'Sony',
        search: 'Sony'
    },
    {
        name: 'GC',
        search: '(GC)'
    },
    {
        name: 'Wii',
        search: '(Wii)'
    },
    {
        name: 'Wii U',
        search: '(Wii U)'
    },
    {
        name: '3DS',
        search: '(3DS)'
    },
    {
        name: 'NDS',
        search: '(NDS)'
    },
    {
        name: 'NES',
        search: '(NES)'
    },
    {
        name: 'SNES',
        search: '(SNES)'
    },
    {
        name: 'N64',
        search: '(N64)'
    },
    {
        name: 'PSX',
        search: '(PSX)'
    },
    {
        name: 'PS2',
        search: '(PS2)'
    },
    {
        name: 'PS3',
        search: '(PS3)'
    },
    {
        name: 'PSP',
        search: '(PSP)'
    },
    {
        name: 'SMD',
        search: '(SMD)'
    },
    {
        name: '32X',
        search: '(32X)'
    },
    {
        name: 'DC',
        search: '(DC)'
    }
];

var emulators = [
    {
        name: 'DOSBox',
        category: 'DOS',
        version: '',
        executable: 'dosbox',
        folder: '',
        icon: 'dosbox.png',
        extensions: ''
    },
    {
        name: 'FS-UAE Launcher',
        category: 'Amiga',
        version: '',
        executable: 'fs-uae-launcher',
        folder: '',
        icon: 'fs-uae.png',
        extensions: ''
    },
    {
        name: 'FS-UAE Arcade',
        category: 'Amiga',
        version: '',
        executable: 'fs-uae-arcade',
        folder: '',
        icon: 'fs-uae.png',
        extensions: ''
    },
    {
        name: 'Hatari',
        category: 'Atari',
        version: '',
        executable: 'hatari',
        folder: '',
        icon: 'hatari.png',
        extensions: ''
    },
    /*{
        name: 'Higan',
        category: 'Nintendo (NES) (SNES) (GB) (GBA)',
        version: '',
        executable: 'higan',
        folder: '',
        icon: 'higan.png',
        extensions: ''
    },*/
    {
        name: 'Nestopia',
        category: 'Nintendo Entertainment System (NES)',
        version: '',
        executable: 'nestopia',
        folder: '',
        icon: 'nestopia.png',
        extensions: ''
    },
    /*{
        name: 'PCSX',
        category: 'Sony PlayStation (PSX)',
        version: '',
        executable: 'pcsx',
        folder: '',
        icon: 'pcsx.png',
        extensions: ''
    },*/
    {
        name: 'Stella',
        category: 'Atari',
        version: '',
        executable: 'stella',
        folder: '',
        icon: 'stella.png',
        extensions: ''
    },
    {
        name: 'Virtual Jaguar',
        category: 'Atari',
        version: '',
        executable: 'virtualjaguar',
        folder: '',
        icon: 'vj.png',
        extensions: ''
    },
    {
        name: 'Yabause',
        category: 'Sega Saturn (SS)',
        version: '',
        executable: 'yabause',
        folder: '',
        icon: 'yabause.png',
        extensions: ''
    },
    {
        name: 'FCEUX',
        category: 'Nintendo Entertainment System (NES)',
        version: '',
        executable: 'fceux',
        folder: '',
        icon: 'fceux.png',
        extensions: ''
    },
    {
        name: 'DeSmuME',
        category: 'Nintendo DS (NDS)',
        version: '',
        executable: 'desmume',
        folder: '',
        icon: 'desmume.png',
        extensions: ''
    },
    {
        name: 'Mupen64Plus-Qt',
        category: 'Nintendo 64 (N64)',
        version: '',
        executable: 'mupen64plus-qt',
        folder: '',
        icon: 'mupen64plus.png',
        extensions: ''
    },
    {
        name: 'Dolphin',
        category: 'Nintendo Game Cube (GC) / Wii (Wii)',
        version: '',
        executable: 'dolphin-emu',
        folder: '',
        icon: 'dolphin.png',
        extensions: ''
    },
    {
        name: 'VBA Express',
        category: 'Nintendo Game Boy (GB) / Color (GBC) / Advance (GBA)',
        version: '',
        executable: 'vbaexpress',
        folder: '',
        icon: 'vbaexpress.png',
        extensions: ''
    },
    /*{
        name: 'Gens GS',
        category: 'Sega',
        version: '',
        executable: 'gens',
        folder: '',
        icon: 'gensgs.png',
        extensions: ''
    },*/
    /*{
        name: 'ZSNES',
        category: 'Super Nintendo (SNES)',
        version: '',
        executable: 'zsnes',
        folder: '',
        icon: 'zsnes.png',
        extensions: ''
    },*/
    /*{
        name: 'PPSSPP',
        category: 'Sony PlayStation Portable (PSP)',
        version: '',
        executable: 'ppsspp-sdl',
        folder: '',
        icon: 'ppsspp.png',
        extensions: ''
    },*/
    /*{
        name: 'PCSX2',
        category: 'Sony PlayStation 2 (PS2)',
        version: '',
        executable: 'PCSX2',
        folder: '',
        icon: 'pcsx2.png',
        extensions: ''
    },*/
    /*{
        name: 'PokeMini',
        category: 'Pokémon Mini',
        version: '',
        executable: 'pokemini',
        folder: '',
        icon: 'pokemini.png',
        extensions: ''
    },*/
    {
        name: 'mGBA',
        category: 'Nintendo Game Boy Advance (GBA)',
        version: '',
        executable: 'mgba-qt',
        folder: '',
        icon: 'mgba.png',
        extensions: ''
    },
    /*{
        name: 'Snes9x',
        category: 'Super Nintendo (SNES)',
        version: '',
        executable: 'snes9x-gtk',
        folder: '',
        icon: 'snes9x.png',
        extensions: ''
    },*/
    /*{
        name: 'VBA-M',
        category: 'Nintendo Game Boy (GB) / Color (GBC) / Advance (GBA)',
        version: '',
        executable: 'visualboyadvance-m',
        folder: '',
        icon: 'vbam.png',
        extensions: ''
    }*/
];

const fs = require('electron').remote.require('fs')

emulators.forEach((emu) => {
    emu.exists = true
    /*if (fs.existsSync(`${emu.executable}`)) {
        emu.exists = true
    } else {
        emu.exists = false
    }*/
    if (localStorage.getItem('emu_' + emu.name) == 'T') {
        emu.fav = true;
    } else {
        emu.fav = false;
    }
})
