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

### (force)Update package even if recently updated
`sudo pacman -Syy`

### Update package
`sudo -Sy`

### Upgrade installed package
`sudo -Su`

### Update and upgrade all
`sudo pacman -Syu`

### Update and dist-upgrade all
`sudo pacman -Syyu`

### Install specific package
`sudo pacman -S pkgname`

### Find available packages
`sudo pacman -Ss keyword`

### Remove packages
`sudo -R pkgname`

### Remove packages as well as unneeded dependencies
`sudo -Rs pkgname`

### Remove packages, dependencies, and system config files (Recommended)
`sudo -Rns pkgname`

### Display all installed packages
`sudo pacman -Q`

### Find available local packages
`sudo pacman -Qs keyword`

### List all files from package
`sudo pacman -Ql pkgname`

### List total number of installed packages by counting lines of output
`sudo pacman -Q| wc -l`

### List only packages installed from the main reposities
`sudo pacman -Qn`

### List only packages installed from AUR
`sudo pacman -Qm`

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
