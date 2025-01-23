# Scripts to install on build host
# lfs-backup
# lfs-chroot
# lfs-config
# lfs-host-init
# lfs-mount
# lfs-source
# lfs-umount

# Scripts to install on LFS host
# lfs-kernel-build

INSTALL_SOURCES = lfs-kernel-build

INSTALL_BUILD_SOURCES = lfs-backup lfs-chroot lfs-config \
	lfs-host-init lfs-mount lfs-source lfs-umount

TARGET_DIR=/usr/local

install:
	for src in $(INSTALL_SOURCES); do \
		cp bin/$$src $(TARGET_DIR)/bin/$$src; \
	done

install-build:
	@for src in $(INSTALL_BUILD_SOURCES); do \
		cp bin/$$src $(TARGET_DIR)/bin/$$src; \
	done

clean:
	@for src in $(INSTALL_SOURCES); do \
		rm -f $$src; \
	done

	@for src in $(INSTALL_BUILD_SOURCES); do \
		rm -f $$src; \
	done
