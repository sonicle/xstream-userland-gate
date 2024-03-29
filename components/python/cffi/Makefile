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
# Copyright (c) 2014, 2018, Oracle and/or its affiliates. All rights reserved.
# Copyright (c) 2019, Michal Nowak
# Copyright (c) 2021, Nona Hansel
#

BUILD_BITS=					32_and_64
BUILD_STYLE=				setup.py
include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=			cffi
COMPONENT_VERSION=	1.14.0
COMPONENT_SRC=			$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_ARCHIVE_HASH=	\
	sha256:2d384f4a127a15ba701207f7639d94106693b6cd64173d6c8988e2c25f3ac2b6
COMPONENT_ARCHIVE_URL=	$(call pypi_url)
COMPONENT_PROJECT_URL=	https://cffi.readthedocs.org/

#PYTHON_VERSIONS=	$(PYTHON_VERSIONS_ALL)
PYTHON_VERSIONS=	3.7 3.9

TEST_TARGET=			$(TEST_32_and_64)
include $(WS_MAKE_RULES)/common.mk

CFLAGS = -DXOPEN_SOURCE=700
CFLAGS += $(CC_BITS)
CFLAGS += -pthread

COMPONENT_TEST_DIR =	$(@D)/tests
COMPONENT_TEST_ENV =	PYTHON_VERSIONS="$(PYTHON_VERSIONS)"
COMPONENT_TEST_ENV +=	$(PYTHON_ENV)
COMPONENT_TEST_ENV +=	PYTHONPATH=$(PROTO_DIR)/$(PYTHON_LIB)
COMPONENT_TEST_ENV +=	TESTOWNLIB_CC="$(CC) $(CC_PIC) %s $(CC_BITS) -shared -o '%s.so'"
COMPONENT_TEST_CMD =	$(PYTHON.$(BITS)) /usr/bin/py.test-$(PYTHON_VERSION)
COMPONENT_TEST_ARGS =  --log-file $(@D)/testresults
COMPONENT_TEST_ARGS +=	-p no:codechecker
COMPONENT_TEST_ARGS +=	-v
COMPONENT_TEST_ARGS +=	c testing

# Copy the tests and a few of the source files they read into a scratch
# directory so running the tests don't leave turds in the source directory.
COMPONENT_PRE_TEST_ACTION = \
	$(MKDIR) $(@D)/tests/doc/source; \
	$(CP) -r $(SOURCE_DIR)/c $(SOURCE_DIR)/testing $(SOURCE_DIR)/cffi $(@D)/tests; \
	$(CP) $(SOURCE_DIR)/setup.py $(@D)/tests; \
	$(CP) \
	    $(SOURCE_DIR)/doc/source/conf.py \
	    $(SOURCE_DIR)/doc/source/index.rst \
	    $(SOURCE_DIR)/doc/source/installation.rst \
	    $(@D)/tests/doc/source

#REQUIRED_PACKAGES += library/python/pycparser-27
#REQUIRED_PACKAGES += library/python/pycparser-35
REQUIRED_PACKAGES += library/python/pycparser-37
REQUIRED_PACKAGES += library/python/pycparser-39
# Auto-generated dependencies
REQUIRED_PACKAGES += library/libffi
#REQUIRED_PACKAGES += runtime/python-27
#REQUIRED_PACKAGES += runtime/python-35
REQUIRED_PACKAGES += runtime/python-37
REQUIRED_PACKAGES += runtime/python-39
REQUIRED_PACKAGES += system/library
