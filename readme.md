# Bastard Keyboards firmwares

This repository contains the firmware code and releases for the Bastard Keyboards Charybdis boards, including builds for Elite-C and Blackpill.

This repository is used as primary source of truth for Bastard Keyboards firmwares.

# Getting Started

The following section will guide you through downloading and installing the proper firmware on your Bastard Keyboard.

## Releases

The latest releases of the firmware are available in the [Releases](https://github.com/Bastardkb/bastardkb-qmk/releases/) section.

The format of the firmware file name is:

```
bastardkb_{keyboard}_{mcu-adapter}_{keymap}
```

### Keyboard

`{keyboard}` corresponds to the physical keyboard you are looking the firmware for. It can be one of the following:

- `skeletyl`: the 3x5 [Skeletyl](https://bastardkb.com/skeletyl/)
- `tbkmini`: the 3x6 [TBK Mini](https://bastardkb.com/tbk-mini/)
- `scylla`: the 4x6 [Scylla](https://bastardkb.com/scylla/)
- `charybdis_3x5`: the 3x5 [Charybdis Nano](https://bastardkb.com/charybdis-nano/)
- `charybdis_4x6`: the 4x6 [Charybdis](https://bastardkb.com/charybdis/)

### Microcontroller/adapter

`{mcu-adapter}` corresponds to the microcontroller (_eg._ Elite-C, Blackpill, …) that is installed in your keyboard, and optionally the revision of the adapter. It can be one of the following:

- `1.x_elitec`
- `2.x_elitec`
- `blackpill`

The version of the adapter can also be checked directly on the adapter PCB.

If you have any doubts, feel free to reach out for help on the [Discord](https://bastardkb.com/discord).

### Keymap

`{keymap}` corresponds to the keymap you want to use on your keyboard. It can be one of the following:

- `default`
- `vial`

Note that, in most cases, you will want to use the `vial` keymap. The `default` keymap is very barebones, and is meant to be used as a template to start developing your own.

The `vial` keymap is compatible out-of-the-box with [Vial](https://get.vial.today/).

### Extension

The file extension is either `.hex` or `.bin`, and depends on the microcontroller, and is irrelevant for this guide.

## Installing the keymap

The process of installing the keymap on the keyboard is called "flashing". There's various ways to flash a firmware file onto a keyboard, one of which is to use [QMK Toolbox](https://github.com/qmk/qmk_toolbox).

To flash your keyboard:

1. Download [QMK Toolbox](https://github.com/qmk/qmk_toolbox/releases), and install the application
1. Download the firmware file (see [Releases](#releases) section)
1. Disconnect your keyboard (both host-to-keyboard USB cable, and keyboard halves TRS/TRRS cable)
1. Open QMK Toolbox, and select the firmware you've just downloaded (see the [QMK Toolbox documentation](https://github.com/qmk/qmk_toolbox) for more details)
1. Plug in one half of the keyboards
1. Press the `reset` button on your controller
1. Click "Flash" to start the flashing process. **Do not disconnect** the keyboard until the process is complete.
1. Disconnect the first half, and connect the other one
1. Repeat the steps to flash the second half
1. Disconnect the keyboard

The new firmware is now installed on both halves. Close QMK Toolbox, connect the two halves with the TRS/TRRS cable, and connect one half to the PC/Mac.

If you have any questions, feel free to reach out for help on the [Discord](https://bastardkb.com/discord).

## Vial

[Vial](https://get.vial.today/) is an open-source cross-platform (Windows, Linux and Mac) GUI and a QMK fork for configuring your keyboard in real time.

![](https://raw.githubusercontent.com/BastardKb/bastardkb-qmk/main/assets/vial.png)

It is compatible with the `vial` keymaps that can be downloaded from the [Releases](https://github.com/Bastardkb/bastardkb-qmk/releases/) section.

Steps to use Vial:

1. [Download Vial](https://get.vial.today/download) from their website, install and open the application
1. Plug your keyboard in
1. PC/Mac will detect the keyboard automatically
1. Use the Vial interface to edit your keymap. Changes are saved automatically.

If you have any questions, feel free to reach out for help on the [Discord](https://bastardkb.com/discord).

# Going further with QMK

The following section is dedicated to advance users that want to customize their keyboard and keymap by building their own firmware. It contains information pertaining to the firmware development.

If you have any questions, feel free to reach out for help on the [Discord](https://bastardkb.com/discord).

## Building from source (advanced)

Building from source is useful to people who want to customize their keyboard and keymaps beyond what Vial offers. This involves using a command-line interface, writing C code, and compiling this code into the final firmware file.

To build the firmware from source:

1. Follow the [QMK docs](https://github.com/samhocevar-forks/qmk-firmware/blob/master/docs/newbs.md) to setup your environment
1. Checkout this repository

To build a firmware **without** Vial support, use the `bkb-master` branch:

```shell
git checkout origin/bkb-master
qmk compile -j0 -c -kb bastardkb/{keyboard} -km default
```

To build a firmware **with** Vial support, use the `bkb-vial` branch:

```shell
git checkout origin/bkb-vial
qmk compile -j0 -c -kb bastardkb/{keyboard} -km vial
```

See [the `{keyboard}` section](#keyboard) for possible values.

To flash the firmware from the command-line, replace `compile` with `flash` in the commands above:

```shell
qmk flash -j0 -c -kb bastardkb/{keyboard} -km default
```

```shell
qmk flash -j0 -c -kb bastardkb/{keyboard} -km vial
```

After compilation, QMK waits for the keyboard to become available as a dfu device to upload firmware. Press the `reset` button on the keyboard to complete the process.

### Why `bkb-master` and `bkb-vial`

The changes on `bkb-master` are meant to be upstreamed and merged into QMK's `master` branch.

Vial, however, does not work out-of-the-box when using QMK's `master` branch, and relies instead of some changes that have not been upstreamed yet. Because of this, this repository trackes Vial's `master` branch (see below, `qmk-vial-head`) and cherry-picks Bastard Keyboards related changes on top of it.

Note that Vial's `master` usually lags a bit behind QMK's `master`, so the latest changes to QMK might not be available when working on `bkb-vial`.

## Pending PRs

No PRs opened against upstream QMK at the moments.

## Branches

### Tracking branches

| Branch          | Tracking                         |
| --------------- | -------------------------------- |
| `qmk-vial-head` | Tracking `vial-kb/vial-qmk/vial` |

### Feature branches

| Branch following QMK's `master` | Parent                                  | Description                                          |
| ------------------------------- | --------------------------------------- | ---------------------------------------------------- |
| `bkb-master`                    | `qmk/qmk_firmware/master` (QMK v0.16.0) | Contains the latest sources for BastardKB's firmware |

| Branch following Vial's `master` | Parent                        | Description                                        |
| -------------------------------- | ----------------------------- | -------------------------------------------------- |
| `bkb-vial`                       | `qmk-vial-head` (QMK v0.15.6) | Vial support on top of the changes in `bkb-master` |
