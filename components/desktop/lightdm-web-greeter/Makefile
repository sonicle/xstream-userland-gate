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

COMPONENT_NAME=		lightdm-web-greeter
COMPONENT_VERSION=	2.2.5
COMPONENT_SUMMARY=	LightDM WebKit Greeter
COMPONENT_SRC=		web-greeter-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	lightdm-$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= sha256:f3223db35d0efaae76b2157f312dd10979c133f5a85add8fc75fd66ecb3186e3
COMPONENT_ARCHIVE_URL=  https://github.com/Antergos/web-greeter/archive/$(COMPONENT_VERSION).tar.gz
COMPONENT_PROJECT_URL=	https://github.com/Antergos/web-greeter
COMPONENT_FMRI=		system/display-manager/lightdm/web-greeter
COMPONENT_CLASSIFICATION=	Desktop (GNOME)/Sessions
COMPONENT_LICENSE=		GPLv3
COMPONENT_LICENSE_FILE=		COPYING

include $(WS_MAKE_RULES)/common.mk

PATH=$(PATH.gnu)

LDFLAGS += -lsocket -lsecdb -lnsl
CFLAGS += -Wno-error=format-nonliteral
CPPFLAGS += $(CPP_XPG6MODE)

$(BUILD_DIR)/%/.configured:     $(SOURCE_DIR)/.prep
	($(RM) -rf $(@D) ; $(MKDIR) $(@D))
	$(COMPONENT_PRE_CONFIGURE_ACTION)
	($(CLONEY) $(SOURCE_DIR) $(@D))
	(cd $(@D)/build ; $(ENV) $(CONFIGURE_ENV) $(MESON) \
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
REQUIRED_PACKAGES += library/desktop/gtk3
REQUIRED_PACKAGES += library/desktop/webkitgtk2
REQUIRED_PACKAGES += library/glib2
REQUIRED_PACKAGES += system/display-manager/lightdm
REQUIRED_PACKAGES += system/library
REQUIRED_PACKAGES += x11/library/libx11
