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
# Copyright (c) 2019, Oracle and/or its affiliates. All rights reserved.
# Copyright (c) 2021, Andreas Wacknitz
#

BUILD_BITS= NO_ARCH
BUILD_STYLE= setup.py
include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		platformdirs
COMPONENT_VERSION=	2.4.1
COMPONENT_FMRI=		library/python/$(COMPONENT_NAME)
COMPONENT_CLASSIFICATION=	Development/Python
COMPONENT_SUMMARY=	platformdirs will help you choose appropriate user dirs
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH= sha256:440633ddfebcc36264232365d7840a970e75e1018d15b4327d11f91909045fda
COMPONENT_ARCHIVE_URL=	$(call pypi_url)
COMPONENT_PROJECT_URL=	https://github.com/platformdirs/platformdirs
COMPONENT_LICENSE=	MIT

# platformdir needs python-3.6+
PYTHON_VERSIONS=	3.7 3.9

# Note that we miss some test dependencies.
include $(WS_MAKE_RULES)/common.mk

ASLR_MODE = $(ASLR_NOT_APPLICABLE)

COMPONENT_TEST_DIR =	$(SOURCE_DIR)/tests
COMPONENT_TEST_CMD =	$(PYTHON) -m pytest
COMPONENT_TEST_ARGS =
COMPONENT_TEST_MASTER = $(COMPONENT_TEST_RESULTS_DIR)/results-all.master
COMPONENT_TEST_TRANSFORMS += \
	'-e "s/in [0-9]*\.[0-9]*s //"' \
	'-n' \
	'-e "/===/p"' \
	'-e "/collected/p"' \
	'-e "/test_/p"'

# Manually added test dependencies
REQUIRED_PACKAGES += library/python/appdirs-37
REQUIRED_PACKAGES += library/python/appdirs-39
REQUIRED_PACKAGES += library/python/flaky-37
REQUIRED_PACKAGES += library/python/flaky-39
#REQUIRED_PACKAGES += library/python/hypothesis-37
#REQUIRED_PACKAGES += library/python/hypothesis-39
#REQUIRED_PACKAGES += library/python/pytest-37
#REQUIRED_PACKAGES += library/python/pytest-39
#REQUIRED_PACKAGES += library/python/pytest-benchmark-37
#REQUIRED_PACKAGES += library/python/pytest-benchmark-39
#REQUIRED_PACKAGES += library/python/pytest-cov-37
#REQUIRED_PACKAGES += library/python/pytest-cov-39
#REQUIRED_PACKAGES += library/python/pytest-mock-37
#REQUIRED_PACKAGES += library/python/pytest-mock-39
#REQUIRED_PACKAGES += library/python/pytest-reporter-37
#REQUIRED_PACKAGES += library/python/pytest-reporter-39

# Auto-generated dependencies
REQUIRED_PACKAGES += runtime/python-37
REQUIRED_PACKAGES += runtime/python-39
