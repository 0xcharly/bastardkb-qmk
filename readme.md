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

| Branch following QMK's `master` | Parent              | Description                                                         |
| ------------------------------- | ------------------- | ------------------------------------------------------------------- |
| `charbdis-upstream`             | `qmk-master-head`   | Add support for the Charybdis keyboards with Elite-C (`atmega32u4`) |
| `charybdis-upstream-f411`       | `charbdis-upstream` | Add Blackpill (`STM32F411CEU6`) support                             |

| Branch following Vial's `master`    | Parent                         | Description                                                          |
| ----------------------------------- | ------------------------------ | -------------------------------------------------------------------- |
| `charybdis-upstream-with-vial`      | `qmk-vial-head`                | Vial support for the Charybdis keyboards with Elite-C (`atmega32u4`) |
| `charybdis-upstream-f411-with-vial` | `charybdis-upstream-with-vial` | Add Blackpill (`STM32F411CEU6`) support                              |
