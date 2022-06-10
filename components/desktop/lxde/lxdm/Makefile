#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL)". You may
# only use this file in accordance with the terms of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2015 Alexander Pyhalov
# Copyright 2016 Till Wegmueller
# Copyright 2016 Ken Mays
# Copyright 2020 Michal Nowak
#

PREFERRED_BITS=		64
BUILD_BITS=		64

include ../../../../make-rules/shared-macros.mk

COMPONENT_NAME=		lxdm
COMPONENT_VERSION=	0.5.3
COMPONENT_PROJECT_URL=	https://www.lxde.org
COMPONENT_SUMMARY=	LXDE login manager
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.xz
COMPONENT_ARCHIVE_HASH=	\
	sha256:4891efee81c72a400cc6703e40aa76f3f3853833d048b72ec805da0f93567f2f
COMPONENT_ARCHIVE_URL=	https://kumisystems.dl.sourceforge.net/project/lxde/$(COMPONENT_NAME)/$(COMPONENT_NAME)%20$(COMPONENT_VERSION)/$(COMPONENT_ARCHIVE)
COMPONENT_LICENSE=	GPLv3
COMPONENT_LICENSE_FILE=	COPYING
COMPONENT_CLASSIFICATION= Desktop (GNOME)/Sessions
COMPONENT_FMRI=		system/display-manager/lxdm

TEST_TARGET=		$(NO_TESTS)

include $(WS_MAKE_RULES)/common.mk

PATH=$(PATH.gnu)

CFLAGS += -D_XPG4_2 -D__EXTENSIONS__
LDFLAGS += -lsocket -lnsl

CONFIGURE_OPTIONS += --enable-gtk3
CONFIGURE_OPTIONS += --disable-static

#build:         $(BUILD_64)

#install:       $(INSTALL_64)

# Auto-generated dependencies
REQUIRED_PACKAGES += library/desktop/cairo
REQUIRED_PACKAGES += library/desktop/gdk-pixbuf
REQUIRED_PACKAGES += library/desktop/gtk3
REQUIRED_PACKAGES += library/desktop/pango
REQUIRED_PACKAGES += library/glib2
REQUIRED_PACKAGES += library/xdg/consolekit
REQUIRED_PACKAGES += SUNWcs
REQUIRED_PACKAGES += system/library
REQUIRED_PACKAGES += system/library/dbus
REQUIRED_PACKAGES += system/library/libdbus
REQUIRED_PACKAGES += x11/library/libx11
REQUIRED_PACKAGES += x11/library/libxcb
