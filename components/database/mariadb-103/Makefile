#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"). You may
# only use this file in accordance with the terms of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2011-2013, EveryCity Ltd. All rights reserved.
# Copyright 2016-2017, Wiselabs Software Ltda - http://www.wiselabs.com.br . All rights reserved.
# Copyright 2019, Michal Nowak
#

PREFERRED_BITS=		64

include ../../../make-rules/shared-macros.mk

COMPONENT_NAME=		mariadb
COMPONENT_MAJOR_VERSION=10.3
COMPONENT_MINOR_VERSION=14
COMPONENT_VERSION=	$(COMPONENT_MAJOR_VERSION).$(COMPONENT_MINOR_VERSION)
COMPONENT_REVISION=	1
COMPONENT_SRC=		$(COMPONENT_NAME)-$(COMPONENT_VERSION)
COMPONENT_ARCHIVE=	$(COMPONENT_SRC).tar.gz
COMPONENT_PROJECT_URL=	https://www.mariadb.org/
COMPONENT_ARCHIVE_HASH=	sha256:ba1c94d92fc8ebdf9b8a1d1b93ed6aeeead33da507efbbd4afcf49f32023e054
COMPONENT_ARCHIVE_URL=	https://downloads.mariadb.com/MariaDB/$(COMPONENT_SRC)/source/$(COMPONENT_ARCHIVE)
COMPONENT_SIG_URL=	$(COMPONENT_ARCHIVE_URL).asc

include $(WS_MAKE_RULES)/prep.mk
include $(WS_MAKE_RULES)/cmake.mk
include $(WS_MAKE_RULES)/ips.mk

CPPFLAGS += -I/usr/include/pcre
# Prevents "Text relocation remains referenced against symbol offset
# in file ../../sql/mysqld_dtrace_all.o" error
LDFLAGS += -Bsymbolic -mimpure-text -lrt

CONFIGURE_PREFIX=/usr/mariadb/$(COMPONENT_MAJOR_VERSION)
CONFDIR=/etc/mariadb/$(COMPONENT_MAJOR_VERSION)
DATA_PREFIX=/var/mariadb/$(COMPONENT_MAJOR_VERSION)

CMAKE_PLUGINDIR.64 =	lib/$(MACH64)/plugin
CMAKE_PLUGINDIR.32 =	lib/$(MACH32)/plugin

CMAKE_OPTIONS+= -DCMAKE_C_COMPILER=$(CC)
CMAKE_OPTIONS+= -DCMAKE_CXX_COMPILER=$(CXX)
CMAKE_OPTIONS+= -DCMAKE_C_FLAGS=$(CFLAGS)

CMAKE_OPTIONS+= -DINSTALL_LAYOUT=SVR4
CMAKE_OPTIONS+= -DCMAKE_INSTALL_PREFIX=$(CONFIGURE_PREFIX)
CMAKE_OPTIONS+= -DINSTALL_BINDIR=$(CMAKE_BINDIR.$(BITS))
CMAKE_OPTIONS+= -DINSTALL_INFODIR=bin
CMAKE_OPTIONS+= -DINSTALL_INCLUDEDIR=include
CMAKE_OPTIONS+= -DINSTALL_LIBDIR=$(CMAKE_LIBDIR.$(BITS))
CMAKE_OPTIONS+= -DINSTALL_PLUGINDIR=$(CMAKE_PLUGINDIR.$(BITS))
CMAKE_OPTIONS+= -DINSTALL_MANDIR=man
CMAKE_OPTIONS+= -DINSTALL_SHAREDIR=share
CMAKE_OPTIONS+= -DINSTALL_MYSQLSHAREDIR=share
CMAKE_OPTIONS+= -DINSTALL_SBINDIR=$(CMAKE_BINDIR.$(BITS))
CMAKE_OPTIONS+= -DINSTALL_SCRIPTDIR=$(CMAKE_BINDIR.$(BITS))
CMAKE_OPTIONS+= -DMYSQL_DATADIR=$(DATA_PREFIX)/data
CMAKE_OPTIONS+= -DSYSCONFDIR=$(CONFDIR)
CMAKE_OPTIONS+= -DINSTALL_SYSCONFDIR=$(CONFDIR)
CMAKE_OPTIONS+= -DENABLE_DTRACE=ON
CMAKE_OPTIONS+= -DWITH_READLINE=ON
CMAKE_OPTIONS+= -DWITH_EMBEDDED_SERVER=ON
CMAKE_OPTIONS+= -DWITHOUT_MROONGA_STORAGE_ENGINE=ON
CMAKE_OPTIONS+= -DHAVE_VISIBILITY_HIDDEN=0
CMAKE_OPTIONS+= -DMY_CONTEXT_USE_UCONTEXT=1
CMAKE_OPTIONS+= -DWITH_EXTRA_CHARSETS=complex
CMAKE_OPTIONS+= -DWITH_ZLIB=system
CMAKE_OPTIONS+= -DWITH_PCRE=system
CMAKE_OPTIONS+= -DWITH_SSL=system
CMAKE_OPTIONS+= -DINSTALL_SUPPORTFILESDIR=share/mysql
CMAKE_OPTIONS+= -DCMAKE_BUILD_TYPE=Release
CMAKE_OPTIONS+= -DCMAKE_REQUIRED_INCLUDES=/usr/include/pcre
CMAKE_OPTIONS+= -DWITH_INNOBASE_STORAGE_ENGINE=1
CMAKE_OPTIONS+= -DWITH_INNODB_MEMCACHED=ON
CMAKE_OPTIONS+= -DWITH_COMMENT="OpenIndiana MariaDB"
CMAKE_OPTIONS+= -DWITH_XTRADB_STORAGE_ENGINE=1
CMAKE_OPTIONS+= -DWITH_CSV_STORAGE_ENGINE=1
CMAKE_OPTIONS+= -DCOMPILATION_COMMENT="OpenIndiana package"

CMAKE_ENV += CPPFLAGS="$(CPPFLAGS)"

COMPONENT_TEST_TRANSFORMS= \
	'-n ' \
	'-e "s/ \].*/ \]/"' \
	'-e "s/ w[0-9] //"' \
	'-e "s/\[//"' \
	'-e "s/\]//"' \
	'-e "s/  */ /g"' \
	'-e "s/ $$//"' \
	'-e "/pass$$/p"' \
	'-e "/fail$$/p"'

COMPONENT_TEST_CMD=	mysql-test/mtr \
				--parallel=$(shell getconf NPROCESSORS_ONLN) \
				--mem \
				--force \
				--retry=0 \
				--mysqld=--binlog-format=mixed \
				--force-restart \
				--max-test-fail=0 \
				--skip-test-list=unstable-tests | sort

build:		$(BUILD_32_and_64)

install:	$(INSTALL_32_and_64)

test:		$(TEST_32_and_64)

# Auto-generated dependencies
REQUIRED_PACKAGES += $(GCC_RUNTIME_PKG)
REQUIRED_PACKAGES += $(GXX_RUNTIME_PKG)
REQUIRED_PACKAGES += compress/bzip2
REQUIRED_PACKAGES += compress/xz
REQUIRED_PACKAGES += library/libxml2
REQUIRED_PACKAGES += library/lz4
REQUIRED_PACKAGES += library/liblzo
REQUIRED_PACKAGES += library/pcre
REQUIRED_PACKAGES += library/security/cracklib
REQUIRED_PACKAGES += library/security/openssl
REQUIRED_PACKAGES += library/unixodbc
REQUIRED_PACKAGES += library/zlib
REQUIRED_PACKAGES += runtime/perl-522
REQUIRED_PACKAGES += runtime/perl-524
REQUIRED_PACKAGES += service/security/kerberos-5
REQUIRED_PACKAGES += shell/bash
REQUIRED_PACKAGES += SUNWcs
REQUIRED_PACKAGES += system/library
REQUIRED_PACKAGES += system/library/math
REQUIRED_PACKAGES += system/library/security/gss
