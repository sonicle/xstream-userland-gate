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

COMPONENT_NAME=		PyQt-builder
COMPONENT_VERSION=	1.3.2
COMPONENT_PROJECT_URL=	https://pypi.org/project/PyQt-builder
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	sha256:d4c93c95d737fb654f0c7e824c668357003c744529a39df6c4456d5627a64b66
COMPONENT_ARCHIVE_URL=	https://files.pythonhosted.org/packages/08/19/21cc98594bdb11ee6abe91522c79cedb9fa8b0119aa64a364fae0dec073c/$(COMPONENT_ARCHIVE)

PYTHON_VERSIONS=	3.7

include $(WS_MAKE_RULES)/prep.mk
include $(WS_MAKE_RULES)/setup.py.mk
include $(WS_MAKE_RULES)/ips.mk

PATH=$(GCC_BINDIR):$(PATH.illumos)

PYTHON_VERSION= 3.7

# common targets
build:		$(BUILD_64)

install:	$(INSTALL_64)

test:		$(NO_TESTS)

# Auto-generated dependencies
REQUIRED_PACKAGES += library/python/setuptools-37
REQUIRED_PACKAGES += runtime/python-37
REQUIRED_PACKAGES += system/library
