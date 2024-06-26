# Planck Keyboard Layout

## Layout

```
Qwerty
,-----------------------------------------------------------------------------------.
| Tab  |   Q  |   W  |   E  |   R  |   T  |   Y  |   U  |   I  |   O  |   P  | Bksp |
|------+------+------+------+------+------+------+------+------+------+------+------|
| C_Esc|   A  |   S  |   D  |   F  |   G  |   H  |   J  |   K  |   L  |   ;  |  '   |
|------+------+------+------+------+------+------+------+------+------+------+------|
| Shift|   Z  |   X  |   C  |   V  |   B  |   N  |   M  |   ,  |   .  |   /  |SEnter|
|------+------+------+------+------+------+------+------+------+------+------+------|
| NAV  | Ctrl | GUI  | ALT  |Lower |  NAV_Space  |Raise | RALT | RGUI | RCtrl| NAV  |
`-----------------------------------------------------------------------------------'


Lower
,-----------------------------------------------------------------------------------.
|   ~  |   !  |   @  |   #  |   $  |   %  |   ^  |   &  |   *  |   (  |   )  |      |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |  F1  |  F2  |  F3  |  F4  |  F5  |  F6  |   -  |   =  |   {  |   }  |  |   |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |  F7  |  F8  |  F9  |  F10 |  F11 |  F12 |   _  |      |      |      |      |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |      |      |      |      |             |      |      |      |      |      |
`-----------------------------------------------------------------------------------'


Raise
,-----------------------------------------------------------------------------------.
|   `  |   1  |   2  |   3  |   4  |   5  |   6  |   7  |   8  |   9  |   0  |      |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |  F1  |  F2  |  F3  |  F4  |  F5  |  F6  |      |      |      |      |      |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |  F7  |  F8  |  F9  |  F10 |  F11 |  F12 |      |      |      |      |      |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |      |      |      |      |             |      |      |      |      |      |
`-----------------------------------------------------------------------------------'


Navigation (HOLD SPACE)
,-----------------------------------------------------------------------------------.
|      |ALT_1 |ALT_2 |ALT_3 |ALT_4 |ALT_5 |ALT_6 |ALT_7 |ALT_8 |ALT_9 |ALT_0 |  Del |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |      |      |      | PgDn | PgUp | LEFT | DOWN |  UP  | RGHT | Play |      |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |      |      |      |BRGTH-|BRGTH+| Prev | Vol- | Vol+ | Next | Mute |      |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |      |      |      |      |             |      |      |      |      |      |
`-----------------------------------------------------------------------------------'


Adjust (Lower + Raise)
,-----------------------------------------------------------------------------------.
|      |      |      | NROM | Reset|      |      |      |      |AGnorm|AGswap|  RGB |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |      |      |      |      |      |RGBmod| BVAL-| BVAL+|RGBmod|      |  AUD |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      | SONG1| SONG2| SONG3|      |      |NK Tog| HUE- | HUE+ |      |      |      |
|------+------+------+------+------+------+------+------+------+------+------+------|
|      |      |      |      |      |             |      |      |      |      |      |
`-----------------------------------------------------------------------------------'
```

## Building

To build the keymap without installing tools globally, this repo uses a Makefile with the QMK version included as a submodule and the `qmk` CLI installed via [Poetry](https://python-poetry.org/) . It symlinks the keymap directory to the correct location in the QMK submodule directory.

Ensure Poetry is installed, run `poetry install` to install the `qmk` CLI. To build the firmware, simply run `make` build. To flash the firmware directly, set your Planck in reset mode and run `make flash`. If you need to clean the build artifacts, use `make clean`.

