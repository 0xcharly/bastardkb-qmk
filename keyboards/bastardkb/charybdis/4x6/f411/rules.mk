# MCU name
MCU = STM32F411

# Bootloader selection
BOOTLOADER = stm32-dfu

CONSOLE_ENABLE = yes
KEYBOARD_SHARED_EP = yes
MOUSE_SHARED_EP = no

EEPROM_DRIVER = spi
WS2812_DRIVER = pwm
SERIAL_DRIVER = usart

DEBOUNCE_TYPE = asym_eager_defer_pk
USE_FPU = no
