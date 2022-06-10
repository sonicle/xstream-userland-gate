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
# Copyright 2015 Aurelien Larcher
# Copyright 2020 Gabriele Bulfon - Sonicle S.r.l.
#

include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		libjpeg-ijg8
COMPONENT_VERSION=	8
LIBJPEG_API_VERSION= 8d
COMPONENT_FMRI= 	image/library/libjpeg-ijg8
COMPONENT_PROJECT_URL=	http://www.ijg.org/
COMPONENT_SUMMARY=	libjpeg - Independent JPEG Group library version 6b
COMPONENT_SRC=		jpeg-$(LIBJPEG_API_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_NAME)-$(COMPONENT_VERSION).tar.gz
COMPONENT_ARCHIVE_HASH=	\
 sha256:00029b1473f0f0ea72fbca3230e8cb25797fbb27e58ae2e46bb8bf5a806fe0b3
COMPONENT_ARCHIVE_URL=	http://www.ijg.org/files/jpegsrc.v$(LIBJPEG_API_VERSION).tar.gz
COMPONENT_LICENSE=	IJG,GPLv2.0
COMPONENT_CLASSIFICATION=System/Multimedia Libraries


include $(WS_MAKE_RULES)/prep.mk
include $(WS_MAKE_RULES)/configure.mk
include $(WS_MAKE_RULES)/ips.mk

CONFIGURE_DEFAULT_DIRS=no

CONFIGURE_OPTIONS+= --enable-shared
CONFIGURE_OPTIONS+= --disable-static
CONFIGURE_OPTIONS+= --mandir=$(CONFIGURE_MANDIR)
CONFIGURE_OPTIONS+= --includedir=$(CONFIGURE_INCLUDEDIR)/$(COMPONENT_NAME)
CONFIGURE_OPTIONS.32+= --bindir=$(USRLIBDIR)/$(COMPONENT_NAME)/bin
CONFIGURE_OPTIONS.32+= --libdir=$(USRLIBDIR)/$(COMPONENT_NAME)/lib
CONFIGURE_OPTIONS.64+= --bindir=$(USRLIBDIR)/$(COMPONENT_NAME)/bin/$(MACH64)
CONFIGURE_OPTIONS.64+= --libdir=$(USRLIBDIR)/$(COMPONENT_NAME)/lib/$(MACH64)


build:		$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)

test:		$(TEST_32_and_64)

# Auto-generated dependencies
REQUIRED_PACKAGES += system/library
