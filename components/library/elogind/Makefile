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
# Copyright (c) 2020, Gabriele Bulfon, Sonicle S.r.l. All rights reserved.
#

include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		elogind
COMPONENT_VERSION=	243.7
COMPONENT_PROJECT_URL=	https://github.com/elogind/elogind
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	v$(COMPONENT_VERSION).tar.gz
COMPONENT_ARCHIVE_HASH=	sha256:941fde1ffbdf51d61e47fcebc49e2fc2b1347fcf3b0522bfa9d65ad5da653e53
COMPONENT_ARCHIVE_URL=	https://github.com/elogind/elogind/archive/$(COMPONENT_ARCHIVE)
COMPONENT_BUGDB=	library/libelogind

include $(WS_TOP)/make-rules/prep.mk
include $(WS_TOP)/make-rules/meson.mk
include $(WS_TOP)/make-rules/ips.mk

#COMPONENT_PRE_CONFIGURE_ACTION =  \
#	($(CLONEY) $(SOURCE_DIR) $(@D))

#CONFIGURE_OPTIONS	+= --disable-static

build:		$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)

# this isn't really true - there _are_ tests, but we can't run
# them because we delete things that the tests want (see above).
test:		$(NO_TESTS)

