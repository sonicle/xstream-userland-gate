#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source.  A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2013 Andrzej Szeszo.  All rights reserved.
# Copyright 2016-2019 Aurelien Larcher. All rights reserved.
#

BUILD_BITS=32
include ../../../make-rules/shared-macros.mk

COMPONENT_VERSION= 4.9.4
COMPONENT_REVISION=7
COMPONENT_ARCHIVE= $(COMPONENT_SRC).tar.bz2
COMPONENT_ARCHIVE_URL= \
  http://ftp.gnu.org/gnu/gcc/gcc-$(COMPONENT_VERSION)/$(COMPONENT_ARCHIVE)
COMPONENT_ARCHIVE_HASH= \
  sha256:6c11d292cd01b294f9f84c9a59c230d80e9e4a47e5c6355f046bb36d4f358092

MPFR_VERSION=3.1.3
MPFR_ARCHIVE_HASH= \
  sha256:f63bb459157cacd223caac545cb816bcdb5a0de28b809e7748b82e9eb89b0afd

MPC_VERSION=1.0.3
MPC_ARCHIVE_HASH= \
  sha256:617decc6ea09889fb08ede330917a00b16809b8db88c29c31bfbb49cbf88ecc3

GMP_VERSION=5.0.5
GMP_ARCHIVE_HASH= \
  sha256:1f588aaccc41bb9aed946f9fe38521c26d8b290d003c5df807f65690f2aadec9

include $(WS_MAKE_RULES)/gcc-component.mk

GCC_COMPONENT_VERSION = $(shell echo $(COMPONENT_VERSION) | $(NAWK) -F. '{print $$1 "." $$2 }')
GCC_COMPONENT_PREFIX = /usr/gcc/$(GCC_COMPONENT_VERSION)

CONFIGURE_OPTIONS+= --enable-plugins
CONFIGURE_OPTIONS+= --enable-objc-gc
#CONFIGURE_OPTIONS+= --enable-initfini-array
CONFIGURE_OPTIONS+= --enable-languages=c,c++,fortran,lto,objc
CONFIGURE_OPTIONS+= --disable-libitm
CONFIGURE_OPTIONS+= --enable-install-libiberty

