set name=variant.arch value=i386
set name=pkg.fmri value=pkg:/package/rpm@1.4,5.11-2020.1.1.0
set name=com.oracle.info.name value=rpm2cpio
set name=userland.info.git-remote value=git@github.com:sonicle/xstream-userland-gate.git
set name=userland.info.git-branch value=master
set name=userland.info.git-rev value=b13ee4d1289d7d1105f6e463a91e7566696c8ed9
set name=pkg.summary value="Utilities for processing RPM archives"
set name=com.oracle.info.description value="the rpm2cpio archive utility"
set name=info.classification value=org.opensolaris.category.2008:System/Packaging
set name=info.upstream-url value=http://svnweb.freebsd.org/ports/head/archivers/rpm2cpio
set name=org.opensolaris.arc-caseid value=PSARC/1999/555
set name=org.opensolaris.consolidation value=sonicle.com
set name=com.oracle.info.version value=1.4
file rpm2cpio.sh group=bin mode=0555 owner=root path=usr/bin/rpm2cpio pkg.depend.bypass-generate=usr/lib(.*)/libpq.so.* pkg.depend.bypass-generate=usr/lib(.*)/libruby.so.* pkg.depend.bypass-generate=usr/lib/libgcc_s\.so\.1 pkg.depend.bypass-generate=usr/lib/amd64/libgcc_s\.so\.1 pkg.depend.bypass-generate=usr/lib/libgfortran\.so\.3 pkg.depend.bypass-generate=usr/lib/amd64/libgfortran\.so\.3 pkg.depend.bypass-generate=usr/lib/libgomp\.so\.1 pkg.depend.bypass-generate=usr/lib/amd64/libgomp\.so\.1 pkg.depend.bypass-generate=usr/lib/libgobjc\.so\.4 pkg.depend.bypass-generate=usr/lib/amd64/libgobjc\.so\.4 pkg.depend.bypass-generate=usr/lib/libgobjc_gc\.so\.4 pkg.depend.bypass-generate=usr/lib/amd64/libgobjc_gc\.so\.4 pkg.depend.bypass-generate=usr/lib/libquadmath\.so\.0 pkg.depend.bypass-generate=usr/lib/amd64/libquadmath\.so\.0 pkg.depend.bypass-generate=usr/lib/libssp\.so\.0 pkg.depend.bypass-generate=usr/lib/amd64/libssp\.so\.0 pkg.depend.bypass-generate=usr/lib/libstdc\+\+\.so\.6 pkg.depend.bypass-generate=usr/lib/amd64/libstdc\+\+\.so\.6
license rpm2cpio.license license=BSD
legacy arch=i386 category=system desc="Utilities for processing RPM archives" hotline="Please contact your local service provider" name="Utilities for processing RPM archives" pkg=SUNWrpm vendor="Project XStreamOS" version=11.11.0,REV=2010.05.25.01.00

depend fmri=pkg:/SUNWcs@0.5.11-1.2020.1.1.0 type=require
