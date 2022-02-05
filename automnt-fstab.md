# Automount drive

Let first grab some device info

`sudo fdisk -l`

```shell
Disk /dev/sda: 931.51 GiB, 1000204886016 bytes, 1953525168 sectors
Disk model: WDC WDS100T2G0A-
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: E60B3C63-0D2E-5B45-B55D-9941313303D5

Device      Start        End    Sectors   Size Type
/dev/sda1    4096     618495     614400   300M EFI System
/dev/sda2  618496 1953520064 1952901569 931.2G Linux filesystem


Disk /dev/sdb: 58.59 GiB, 62914560000 bytes, 122880000 sectors
Disk model: Flash Disk      
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xfa2cb833

Device     Boot Start       End   Sectors  Size Id Type
/dev/sdb1        2048 122877951 122875904 58.6G  7 HPFS/NTFS/exFAT

```

Display the info about available block devices. This will allow us to view the filesystem type, UUID, labels, etc.

```shell
/dev/sda2: UUID="cb71b3ac-de0f-473c-9708-4d31d382d0d1" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="root" PARTUUID="c3c31574-70b9-2741-82e2-5d4c66c818b8"
/dev/sda1: LABEL_FATBOOT="NO_LABEL" LABEL="NO_LABEL" UUID="FCBC-9561" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="2ea40180-1969-7543-a9ac-03b65166f084"
```