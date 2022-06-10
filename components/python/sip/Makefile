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

COMPONENT_NAME=		sip
COMPONENT_VERSION=	5.2.0
COMPONENT_PROJECT_URL=	https://www.riverbankcomputing.com/software/sip/intro
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	sha256:3d3f279a61d54d832b12496409811ee062dab1ac05a1e7b40824f63b423fb0e7
COMPONENT_ARCHIVE_URL=	https://files.pythonhosted.org/packages/bc/dd/aa60ae73bc213466fd158e3d8b91d55ac00a248b14a98919bfe0e12c5d74/$(COMPONENT_ARCHIVE)

PYTHON_VERSIONS=	3.7 3.9

include $(WS_MAKE_RULES)/prep.mk
include $(WS_MAKE_RULES)/setup.py.mk
include $(WS_MAKE_RULES)/ips.mk

PATH=$(GCC_BINDIR):$(PATH.illumos)

PYTHON_VERSION= 3.7

#COMPONENT_BUILD_ACTION = cd $(@D); \
#  CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" /usr/bin/python3.5 ./configure.py --platform=solaris-g++-64

#  CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" /usr/bin/python3.5 ./configure.py --qmake /usr/lib/qt/5.14/bin/amd64/qmake --confirm-license

COMPONENT_POST_INSTALL_ACTION = \
        (cd $(PROTO_DIR)/usr/bin ; \
	$(MV) -f sip-build sip-build-$(PYTHON_VERSION); \
	$(MV) -f sip-distinfo sip-distinfo-$(PYTHON_VERSION); \
	$(MV) -f sip-install sip-install-$(PYTHON_VERSION); \
	$(MV) -f sip-module sip-module-$(PYTHON_VERSION); \
	$(MV) -f sip-sdist sip-sdist-$(PYTHON_VERSION); \
	$(MV) -f sip-wheel sip-wheel-$(PYTHON_VERSION); \
	$(MV) -f sip5 sip5-$(PYTHON_VERSION); \
	)

# common targets
build:		$(BUILD_64)

install:	$(INSTALL_64)

test:		$(TEST_NO_ARCH)

# Auto-generated dependencies
REQUIRED_PACKAGES += library/python/setuptools-37
REQUIRED_PACKAGES += library/python/setuptools-39
REQUIRED_PACKAGES += library/python/importlib-metadata-37
REQUIRED_PACKAGES += library/python/importlib-metadata-39
REQUIRED_PACKAGES += runtime/python-37
REQUIRED_PACKAGES += runtime/python-39
REQUIRED_PACKAGES += system/library
