# NoteOs

NoteOs é uma distribuição Linux experimental baseada em Arch Linux, focada inicialmente no Samsung Galaxy Book2 com Intel Core i5 de 12ª geração, Intel Iris Xe e 8 GB de RAM ou mais.

## Objetivo

Criar uma ISO reproduzível, estável e enxuta, com ajustes específicos para notebooks Samsung Galaxy Book2.

## Status

Pré-alpha. Estrutura inicial do projeto.

## Base técnica

- Arch Linux
- archiso
- pacman / makepkg
- systemd
- Kernel LTS ou kernel Arch recente
- Intel microcode
- linux-firmware
- Mesa / Vulkan Intel
- PipeWire / WirePlumber
- TLP / thermald
- Btrfs / Snapper

## Estrutura

```txt
NoteOs/
├── archiso/
├── docs/
├── packages/
├── repo/
├── scripts/
└── noteos/
```

## Build inicial

```bash
sudo pacman -Syu
sudo pacman -S archiso git base-devel devtools pacman-contrib
./scripts/init-archiso.sh
./scripts/build-iso.sh
```

## Aviso

Ainda não use em máquina principal sem backup.
