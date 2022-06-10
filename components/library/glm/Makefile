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
# Copyright 2014 Sonicle S.r.l. All rights reserved.
#

include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		glm
COMPONENT_VERSION=	0.9.9.7
COMPONENT_SRC=		$(COMPONENT_NAME)
COMPONENT_ARCHIVE=	$(COMPONENT_NAME)-$(COMPONENT_VERSION).zip
COMPONENT_ARCHIVE_HASH=	sha256:6b79c3d06d9745d1cce3f38c0c15666596f9aefff25ddb74df3af0a02f011ee1
COMPONENT_ARCHIVE_URL=	https://github.com/g-truc/$(COMPONENT_NAME)/releases/download/$(COMPONENT_VERSION)/$(COMPONENT_ARCHIVE)

include $(WS_MAKE_RULES)/prep.mk
include $(WS_MAKE_RULES)/configure.mk
include $(WS_MAKE_RULES)/ips.mk

LDFLAGS += $(CC_BITS)

CONFIG_SHELL=
CONFIGURE_SCRIPT = cmake $(SOURCE_DIR)

CONFIGURE_OPTIONS=
CONFIGURE_OPTIONS += -DCMAKE_INSTALL_PREFIX="$(CONFIGURE_PREFIX)"
CONFIGURE_OPTIONS += -DCMAKE_CXX_FLAGS="$(CXXFLAGS)"
CONFIGURE_OPTIONS += -DCMAKE_C_FLAGS="$(CFLAGS)"
CONFIGURE_OPTIONS += -DCMAKE_VERBOSE_MAKEFILE=ON
CONFIGURE_OPTIONS += $(CONFIGURE_OPTIONS.$(BITS))

DESTDIR=$(PROTO_DIR)

COMPONENT_INSTALL_ARGS = \
        DESTDIR="$(DESTDIR)"


build:		$(BUILD_32)

install:	$(INSTALL_32)

