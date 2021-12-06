## C++

`sudo pacman -Sy gcc`

## git

`sudo pacman -S git`

### Configure git

#### Set global identity
The global settings are stored in the `.gitconfig` file under your home directory.
```
git config --global user.name "your_name"
git config --global user.email "your_email_address"
```
#### Set local identity

Configure local Git settings on Linux
Your local, or project-specific settings are stored in a project’s `.git/config` file. Use the following commands to set the username and email address you’ll like to use for a specific project.

* Configure a local username

`git config --local user.name "your_name"`

* Configure a local email address

`git config --local user.email "your_email_address"`

## Some other common commands

### Update package list
`sudo pacman -Syy`

### Update and upgrade all
`sudo pacman -Syu`

### Install specific package
`sudo pacman -S pkgname`

### Find available packages
`sudo pacman -Ss keyword`

### Find available local packages
`sudo pacman -Qs keyword`

### List all files from package
`pacman -Ql pkgname`

### Pacman log file
`/var/log/pacman.log`

### Screen recording
`gtk-recordmydesktop`

### Mount iso file
`fuseiso -p  testimage.iso testimagemountpoint`

### To unmount
`fusermount -u <mountpoint>`

### To remove a package and its dependencies which are not required by any other installed package
`sudo pacman -Rs package_name`

### List all packages no longer required as dependencies
`sudo pacman -Qdt`

### Get IP address
`ip addr`

### Update and upgrade yaourt packages
`yaourt -Syua`

### Get distro version
`lsb_release -a`
