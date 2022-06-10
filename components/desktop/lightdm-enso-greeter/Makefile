#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source.  A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2016 Alexander Pyhalov
# Copyright 2020 Michal Nowak
#

BUILD_BITS=		64
BUILD_STYLE=meson

include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		enso-pantheon-greeter
COMPONENT_VERSION=	1.1
COMPONENT_SUMMARY=	LightDM Enso Pantheon Greeter
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tgz
COMPONENT_ARCHIVE_HASH= sha256:32d60c09da5e0a460047644a11686ab70915f1f7931a6a26bd67ebfd168d9644
COMPONENT_ARCHIVE_URL=  https://github.com/nick92/Enso-OS/tree/master/greeter/archive/$(COMPONENT_ARCHIVE)
COMPONENT_PROJECT_URL=	https://github.com/nick92/Enso-OS/tree/master/greeter
COMPONENT_FMRI=		system/display-manager/lightdm/enso-pantheon-greeter
COMPONENT_CLASSIFICATION=	Desktop (GNOME)/Sessions
COMPONENT_LICENSE=		GPLv3
COMPONENT_LICENSE_FILE=		LICENSE

include $(WS_MAKE_RULES)/common.mk

PATH=$(PATH.gnu)

LDFLAGS += -lsocket -lsecdb -lnsl
CFLAGS += -Wno-error=format-nonliteral
CPPFLAGS += $(CPP_XPG6MODE)

$(BUILD_DIR)/%/.configured:     $(SOURCE_DIR)/.prep
	($(RM) -rf $(@D) ; $(MKDIR) $(@D))
	$(COMPONENT_PRE_CONFIGURE_ACTION)
	($(CLONEY) $(SOURCE_DIR) $(@D))
	(mkdir $(@D)/build; cd $(@D)/build ; $(ENV) $(CONFIGURE_ENV) $(MESON) \
		$(CONFIGURE_OPTIONS))
	$(COMPONENT_POST_CONFIGURE_ACTION)
	$(TOUCH) $@

COMPONENT_BUILD_ACTION = \
        $(ENV) $(COMPONENT_BUILD_ENV) \
        $(NINJA) -C $(@D)/build $(COMPONENT_BUILD_ARGS) $(COMPONENT_BUILD_TARGETS)

COMPONENT_INSTALL_ACTION = \
        $(ENV) $(COMPONENT_INSTALL_ENV) \
        $(NINJA) -C $(@D)/build $(COMPONENT_INSTALL_ARGS) $(COMPONENT_INSTALL_TARGETS)

# Auto-generated dependencies
REQUIRED_PACKAGES += library/desktop/cairo
REQUIRED_PACKAGES += library/desktop/clutter
REQUIRED_PACKAGES += library/desktop/clutter/clutter-gtk-1
REQUIRED_PACKAGES += library/desktop/cogl
REQUIRED_PACKAGES += library/desktop/gdk-pixbuf
REQUIRED_PACKAGES += library/desktop/gtk3
REQUIRED_PACKAGES += library/glib2
REQUIRED_PACKAGES += library/gnome/libgee
REQUIRED_PACKAGES += system/display-manager/lightdm
REQUIRED_PACKAGES += system/library
REQUIRED_PACKAGES += x11/library/libx11
