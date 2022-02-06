## Essentials  after reinstalling arch
 ### setting up the fastest mirror

 sudo pacman-mirrors --fasttrack

### Backup

 * Check interconnected devices

 ```shell
 lsblk                                                       
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 931.5G  0 disk 
├─sda1   8:1    0   300M  0 part /boot/efi
└─sda2   8:2    0 931.2G  0 part /
sdc      8:32   1  58.6G  0 disk 
└─sdc1   8:33   1  58.6G  0 part /run/media/leannejd/288C-A797
sr0     11:0    1  1024M  0 rom  
 ```
so `sdc1` is our usb drive.

* The `rsync` back up `/` and `/dev/sda2` is mounted on `/`. So, we create the directory `/mnt/usb`, mount `/dev/sdc1` on `/mnt/usb`. After running the command below, the contents of drive `/dev/sdc1` is visible at `/mnt/usb`.

`mount /dev/sdc1 /mnt/usb`

* Run script `daily_backup`. Make sure to give permission first.

```shell
chmod+x auto_daily_backup
./auto_daily_backup
```
Make sure the `/mnt/usb/root_backup/mnt/usb` is empty as we don't want to recursively back up!

### Install stable kernels

* Identify in-use kernel
```shell
mhwd-kernel -li

Currently running: 5.15.19-1-MANJARO (linux515)
The following kernels are installed in your system:
   * linux513
   * linux515
```

* Install new kernels

`sudo mhwd-kernel -i linux515`
## C++

`sudo pacman -S base-devel`

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

### List all installed packages
`pacman -Q`

### List all installed packages with locations
`pacman -Ql`

### Find available local packages
`pacman -Qs keyword`

### List all files from package
`pacman -Ql pkgname`

### List total number of installed packages by counting lines of output
`pacman -Q| wc -l`

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
`pacman -Qdt`

### Get IP address
`ip addr`

### Update and upgrade yaourt packages
`yaourt -Syua`

### Get distro version
`lsb_release -a`
