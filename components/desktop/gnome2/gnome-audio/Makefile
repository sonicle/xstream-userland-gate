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
# Copyright 2020 Sonicle S.r.l. All rights reserved.
#

include ../../../../make-rules/shared-macros.mk


COMPONENT_NAME=		gnome-audio
COMPONENT_VERSION=	2.22.2
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.bz2
COMPONENT_ARCHIVE_HASH=	sha256:2f870f822360d22d857548e549b600ca74511e060754e1dca8e3f8ec40210c8c
COMPONENT_ARCHIVE_URL=	ftp://ftp.gnome.org/pub/GNOME/sources/gnome-audio/2.22/$(COMPONENT_ARCHIVE)

include $(WS_MAKE_RULES)/prep.mk
include $(WS_MAKE_RULES)/justmake.mk
include $(WS_MAKE_RULES)/ips.mk

build:		$(BUILD_32)

install:	$(INSTALL_32)

