# Checklist de testes

## Boot

- ISO inicia em VM
- ISO inicia via USB no Galaxy Book2
- UEFI detecta mídia
- systemd chega no target esperado

## Hardware

- Wi-Fi conecta
- Bluetooth liga
- Áudio interno funciona
- Microfone funciona
- Webcam funciona
- Touchpad funciona
- Teclas Fn funcionam parcialmente ou totalmente

## Energia

- Suspender pela tampa
- Voltar da suspensão
- Testar bateria em idle
- Verificar thermald
- Verificar TLP

## Gráficos

- Wayland inicia
- Vulkan detecta Intel
- VA-API detecta driver Intel

## Segurança

- pacman funciona
- chaves do Arch funcionam
- repo NoteOs local funciona
- rollback testado quando Btrfs/Snapper entrar
