# Instruction for switching kernels 

Open GRUB config in your beloved editor

`sudo vim /etc/default/grub`

Make sure we keep the following

```
GRUB_DEFAULT=saved

GRUB_SAVEDEFAULT=true

GRUB_DISABLE_SUBMENU=y
``` 

Reloading GRUB Configuration

`sudo grub-mkconfig -o /boot/grub/grub.cfg`

# Check available kernels from pacman

`pacman -Sqs linux | grep linux | less`
