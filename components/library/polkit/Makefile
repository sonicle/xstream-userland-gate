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
# Copyright 2013 Sonicle S.r.l. All rights reserved.
#

include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		polkit
COMPONENT_VERSION=	0.116
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	sha256:88170c9e711e8db305a12fdb8234fac5706c61969b94e084d0f117d8ec5d34b1
COMPONENT_ARCHIVE_URL=	http://www.freedesktop.org/software/polkit/releases/$(COMPONENT_ARCHIVE)

include $(WS_MAKE_RULES)/prep.mk
include $(WS_MAKE_RULES)/configure.mk
include $(WS_MAKE_RULES)/ips.mk

#FLAGS_amd64 = -m64 -xarch=generic

#LDFLAGS += -lresolv -lnsl -lsocket

CONFIGURE_ENV.32 = LIBJS_LIBS="-lmozjs185 -Wl,-rpath,/usr/lib/mps -L/usr/lib/mps -lssl3 -lsmime3 -lnss3 -lnssutil3 -lplds4 -lplc4 -lnspr4 -lpthread -ldl"
CONFIGURE_ENV.64 = LIBJS_LIBS="-lmozjs185 -Wl,-rpath,/usr/lib/mps/amd64 -L/usr/lib/mps/amd64 -lssl3 -lsmime3 -lnss3 -lnssutil3 -lplds4 -lplc4 -lnspr4 -lpthread -ldl"
CONFIGURE_ENV += LIBJS_CFLAGS="-I/usr/include/js -I/usr/include/mps"
CONFIGURE_ENV += $(CONFIGURE_ENV.$(BITS))


CONFIGURE_OPTIONS += --disable-largefile XGETTEXT=/usr/gnu/bin/xgettext MSGFMT=/usr/gnu/bin/msgfmt

build:		$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)

