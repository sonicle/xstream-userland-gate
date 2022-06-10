#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License (the "License").
# You may not use this file except in compliance with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#

#
# Copyright (c) 2011, Sonicle S.r.l. All rights reserved.
#

include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		motif
COMPONENT_VERSION=	2.3.8
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_PROJECT_URL=	http://motif.ics.com
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
#COMPONENT_ARCHIVE_HASH=	sha256:637efa09608e0b8f93465dbeb7c92e58ebb14c4bc1b488040eb79a65af3efbe0
COMPONENT_ARCHIVE_HASH=	sha256:859b723666eeac7df018209d66045c9853b50b4218cecadb794e2359619ebce7
COMPONENT_ARCHIVE_URL=	http://downloads.sourceforge.net/project/motif/Motif%20$(COMPONENT_VERSION)%20Source%20Code/$(COMPONENT_ARCHIVE)

include ../../../make-rules/prep.mk
include ../../../make-rules/configure.mk
include ../../../make-rules/ips.mk

JOBS=1

COMPONENT_PREP_ACTION= \
        ( cd $(@D); \
	  libtoolize --force --automake && \
	  aclocal -I . && \
	  autoconf && \
	  autoheader && \
	  automake --foreign  --include-deps --add-missing )

#COMPONENT_PRE_CONFIGURE_ACTION = \
#        ($(CLONEY) $(SOURCE_DIR) $(@D))

#CONFIGURE_SCRIPT = ./autogen.sh

CFLAGS += -std=gnu99 -D_POSIX_C_SOURCE=200112L



# common targets
build:		$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)

# Auto-generated dependencies
REQUIRED_PACKAGES += image/library/libjpeg
REQUIRED_PACKAGES += image/library/libjpeg-ijg8
REQUIRED_PACKAGES += image/library/libpng16
REQUIRED_PACKAGES += system/library
REQUIRED_PACKAGES += system/library/math
REQUIRED_PACKAGES += x11/library/libx11
REQUIRED_PACKAGES += x11/library/libxext
REQUIRED_PACKAGES += x11/library/libxmu
REQUIRED_PACKAGES += x11/library/libxp
REQUIRED_PACKAGES += x11/library/toolkit/libxt
