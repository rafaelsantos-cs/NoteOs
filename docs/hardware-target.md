# Hardware alvo

## Modelo inicial

Samsung Galaxy Book2, família NP550XED ou equivalente.

## Perfil esperado

- CPU Intel Core i5 12ª geração
- GPU Intel Iris Xe
- RAM 8 GB DDR4 3200 MHz ou superior
- UEFI
- SSD interno
- Wi-Fi Intel ou compatível com kernel Linux moderno

## Stack Linux planejada

- i915 para GPU Intel
- Mesa para OpenGL
- vulkan-intel para Vulkan
- intel-media-driver para aceleração de vídeo
- iwlwifi para Wi-Fi Intel
- sof-firmware para áudio Intel/SOF
- intel-ucode para microcode
- samsung-galaxybook quando disponível no kernel

## Comandos de inventário

```bash
lspci -nn
lsusb
inxi -Fzxx
cat /sys/power/mem_sleep
libinput list-devices
sudo dmidecode -t system -t baseboard -t memory
```
