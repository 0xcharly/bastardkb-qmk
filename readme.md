# Bastard Keyboards firmwares

This repository contains the firmware code and releases for the Bastard Keyboards Charybdis boards, including builds for Elite-C (`Atmega32u4`) and Blackpill (`STM32F411CEU6`).

This repository is used as primary source of truth until the changes are upstreamed (either to `qmk/qmk_firmware`, or `vial-kb/vial-qmk`).

## Pending PRs

No PRs opened at the moments.

## Branches

### Tracking branches

| Branch             | Tracking                            |
| ------------------ | ----------------------------------- |
| `qmk-master-head`  | Tracking `qmk/qmk_firmware/master`  |
| `qmk-develop-head` | Tracking `qmk/qmk_firmware/develop` |
| `qmk-vial-head`    | Tracking `vial-kb/vial-qmk/vial`    |

### Feature branches

| Branch following QMK's `master` | Parent                          | Description                                          |
| ------------------------------- | ------------------------------- | ---------------------------------------------------- |
| `bkb-master`                    | `qmk-master-head` (QMK v0.16.0) | Contains the latest sources for BastardKB's firmware |

The structure is as follow:

```
keyboards/bastardkb
├── charybdis
│   ├── 3x5
│   │   ├── 1.x
│   │   │   └── elitec
│   │   ├── blackpill
│   └── 4x6
│       ├── 1.x
│       │   └── elitec
│       ├── blackpill
├── scylla
│   ├── 1.x
│   │   └── elitec
│   ├── blackpill
├── skeletyl
│   ├── 1.x
│   │   └── elitec
│   ├── blackpill
└── tbkmini
    ├── 1.x
    │   └── elitec
    └── blackpill
```

For each board, the `default` firmware is available. For the Charybdis 3x5 and 4x6, check out the `via` keymap, which is much more feature-rich.

| Branch following Vial's `master` | Parent                        | Description                                        |
| -------------------------------- | ----------------------------- | -------------------------------------------------- |
| `bkb-vial`                       | `qmk-vial-head` (QMK v0.15.6) | Vial support on top of the changes in `bkb-master` |

For all boards above, the additional `vial` keymap is available, for out-of-the-box compatibility with Vial.
