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
# Copyright 2017, Sonicle S.r.l.
#

include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		kvmadm
COMPONENT_VERSION=	0.12.3
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
#COMPONENT_ARCHIVE_HASH=	sha256:55cc59ee33cd5bb7970bba8bbd5bfc542ce5b562a237b4ffbe67723e5aa0b3d7
COMPONENT_ARCHIVE_URL=	https://github.com/hadfl/$(COMPONENT_NAME)/releases/download/v$(COMPONENT_VERSION)/$(COMPONENT_ARCHIVE)

include $(WS_MAKE_RULES)/prep.mk
include $(WS_MAKE_RULES)/configure.mk
include $(WS_MAKE_RULES)/ips.mk

PERL_VERSION =  5.22

COMPONENT_PRE_CONFIGURE_ACTION = \
        $(CLONEY) $(SOURCE_DIR) $(@D)

CONFIGURE_ENV += PERL5LIB=/usr/perl5/$(PERL_VERSION)/lib
CONFIGURE_OPTIONS += --libdir=/usr/perl5/$(PERL_VERSION)/lib

#COMPONENT_BUILD_ENV += PERL5LIB=$(PERL_PATH)/$(PERL_VERSION)/lib
#COMPONENT_INSTALL_ENV += PERL5LIB=$(PERL_PATH)/$(PERL_VERSION)/lib

build:	$(BUILD_32)

install:	$(INSTALL_32)

# Auto-generated dependencies
REQUIRED_PACKAGES += runtime/perl-522
REQUIRED_PACKAGES += SUNWcs
