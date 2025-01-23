# LFS Notes

backup/save somewhere common:
- rootfs
- lfsutil script
- build-kernel script
- /etc/profile

update:
- add flag support to build-kernel script
    - add flag for no-backup (--no-backup)
    - update flag for reboot (--reboot)
    - try to detect which kernel is loaded to determine which to load from and if backup should be performed

setup:
- encrypted root disk
- ukify'd boot kernel

blfs install:
- [x] sudo
- openssh server
    - complete configuration
- make-ca
- libpsl
- wget
- dhcpd
- lynx

remove:
- /sources
- documentation (to remove/move):
  - /usr/share/doc/
  - /usr/share/man/man{1,3,8}
  - /usr/share/info
- unused locales

## Install htop

[htop Releases](https://github.com/htop-dev/htop/releases)

Get source: [htop](https://github.com/htop-dev/htop/archive/refs/tags/3.3.0.tar.gz)

```
./autogen.sh
./configure
make
sudo make install
```
