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

COMPONENT_NAME=		PyQt5_sip
COMPONENT_VERSION=	12.7.2
COMPONENT_PROJECT_URL=	https://www.riverbankcomputing.com/software/pyqt/intro
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	sha256:16a19b9f36985b8bff30b89fb8859d831713dd528fba5600563e36ff077960a2
COMPONENT_ARCHIVE_URL=	https://files.pythonhosted.org/packages/32/24/1537d09deb3aee2e5c390cd456420a455ac47ef3f8ac323d8397af1c1c13/$(COMPONENT_ARCHIVE)

PYTHON_VERSIONS=	3.7

include $(WS_MAKE_RULES)/prep.mk
include $(WS_MAKE_RULES)/setup.py.mk
include $(WS_MAKE_RULES)/ips.mk

PATH=$(GCC_BINDIR):$(PATH.illumos)

PYTHON_VERSION= 3.7
PYTHON_LIB= /usr/lib/python$(PYTHON_VERSION)/site-packages

#COMPONENT_INSTALL_ARGS += INSTALL_ROOT=$(PROTO_DIR)
#COMPONENT_INSTALL_ARGS += -j$(JOBS)
#COMPONENT_BUILD_ARGS += INSTALL_ROOT=$(PROTO_DIR)

#COMPONENT_BUILD_ACTION = cd $(@D); \
#  CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" /usr/bin/python3.7 ./configure.py --qmake /usr/lib/qt/5.14/bin/amd64/qmake --confirm-license


# common targets
build:		$(BUILD_64)

install:	$(INSTALL_64)

test:		$(NO_TESTS)

# Auto-generated dependencies
REQUIRED_PACKAGES += runtime/python-37
REQUIRED_PACKAGES += system/library
