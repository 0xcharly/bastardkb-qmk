# Bastard Keyboards Charybdis firmware

This repository contains the firmware code and releases for the Bastard Keyboards Charybdis boards, including builds for Elite-C (`Atmega32u4`) and Blackpill (`STM32F411CEU6`).

This repository is used as primary source of truth until the changes are upstreamed (either to `qmk/qmk_firmware`, or `vial/vial`).

## Pending PRs

| Branch               | Description                                                 | Link                                                     |
| -------------------- | ----------------------------------------------------------- | -------------------------------------------------------- |
| `charybdis-upstream` | Main Charybdis firmware with Elite-C (`atmega32u4`) support | [#15333](https://github.com/qmk/qmk_firmware/pull/15333) |

## Branches

### Tracking branches

| Branch             | Tracking                            |
| ------------------ | ----------------------------------- |
| `qmk-master-head`  | Tracking `qmk/qmk_firmware/master`  |
| `qmk-develop-head` | Tracking `qmk/qmk_firmware/develop` |
| `qmk-vial-head`    | Tracking `vial/vial-qmk/vial`       |

### Feature branches

| Branch                              | Parent              | Description                                                         |
| ----------------------------------- | ------------------- | ------------------------------------------------------------------- |
| `charbdis-upstream`                 | `qmk-master-head`   | Primary branch based onto QMK's `master`                            |
| `charybdis-upstream-with-vial`      | `qmk-vial-head`     | `charybdis-upstream` rebased onto Vial's master (_ie._ `vial`)      |
| `charybdis-upstream-f411`           | `charbdis-upstream` | Add support for Blackpill (`STM32F411CEU6`)                         |
| `charybdis-upstream-f411-with-vial` | `qmk-vial-head`     | `charybdis-upstream-f411` rebased onto Vial's master (_ie._ `vial`) |
