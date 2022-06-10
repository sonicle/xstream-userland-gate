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
# Copyright 2020 Gabriele Bulfon - Sonicle S.r.l.
#
include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		PyQt5
COMPONENT_VERSION=	5.13.2
COMPONENT_PROJECT_URL=	https://www.riverbankcomputing.com/software/pyqt/intro
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	sha256:adc17c077bf233987b8e43ada87d1e0deca9bd71a13e5fd5fc377482ed69c827
COMPONENT_ARCHIVE_URL=	https://www.riverbankcomputing.com/static/Downloads/$(COMPONENT_NAME)/$(COMPONENT_VERSION)/$(COMPONENT_ARCHIVE)

PYTHON_VERSIONS=	3.7

include $(WS_MAKE_RULES)/prep.mk
include $(WS_MAKE_RULES)/justmake.mk
include $(WS_MAKE_RULES)/ips.mk

PATH=$(GCC_BINDIR):$(PATH.illumos)

PYTHON_VERSION= 3.7

#COMPONENT_INSTALL_ARGS += INSTALL_ROOT=$(PROTO_DIR)
#COMPONENT_INSTALL_ARGS += -j$(JOBS)
#COMPONENT_BUILD_ARGS += INSTALL_ROOT=$(PROTO_DIR)

COMPONENT_BUILD_ACTION = cd $(@D); \
  CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" /usr/bin/sip-build --no-make --qmake /usr/lib/qt/5.14/bin/amd64/qmake --confirm-license

#  CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" /usr/bin/sip-build --no-make --qmake /usr/lib/qt/5.14/bin/amd64/qmake --confirm-license --target-dir $(PROTO_DIR)

COMPONENT_INSTALL_ACTION = cd $(@D)/build; \
  CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" INSTALL_ROOT=$(PROTO_DIR) gmake install

#  CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" /usr/bin/python3.5 ./configure.py --sip-module PyQt5.sip --qmake /usr/lib/qt/5.14/bin/amd64/qmake --confirm-license


# common targets
build:		$(BUILD_64)

install:	$(INSTALL_64)

test:		$(NO_TESTS)

REQUIRED_PACKAGES += service/opengl/ogl-select
REQUIRED_PACKAGES += x11/library/mesa

# Auto-generated dependencies
REQUIRED_PACKAGES += $(GCC_RUNTIME_PKG)
REQUIRED_PACKAGES += $(GXX_RUNTIME_PKG)
REQUIRED_PACKAGES += library/qt5
REQUIRED_PACKAGES += runtime/python-37
REQUIRED_PACKAGES += SUNWcs
REQUIRED_PACKAGES += system/library
REQUIRED_PACKAGES += system/library/libdbus
REQUIRED_PACKAGES += system/library/math
