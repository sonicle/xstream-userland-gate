set name=pkg.fmri value=pkg:/compatibility/packages/SUNWxwplr@0.5.11,5.11-2020.1.1.2
set name=com.oracle.info.name value=x11-compatibility
set name=userland.info.git-remote value=git@github.com:sonicle/xstream-userland-gate.git
set name=userland.info.git-branch value=master
set name=userland.info.git-rev value=b13ee4d1289d7d1105f6e463a91e7566696c8ed9
set name=pkg.summary value="X Window System platform software configuration group"
set name=pkg.description value="A group package that provides the same set of SMF services and configuration files as the SUNWxwplr package for prior Solaris releases"
set name=info.classification value=org.opensolaris.category.2008:System/X11
set name=org.opensolaris.consolidation value=sonicle.com
set name=com.oracle.info.version value=0.5.11
set name=variant.arch value=i386
legacy arch=i386 category=system desc="X Window System platform software configuration" hotline="Please contact your local service provider" name="X Window System platform software configuration" pkg=SUNWxwplr vendor="Project XStreamOS" version=11.11.0,REV=2010.05.25.01.00

depend fmri=pkg:/service/opengl/ogl-select type=require
depend fmri=pkg:/system/library/fontconfig type=require
depend fmri=pkg:/x11/server/xserver-common type=require
depend fmri=pkg:/x11/xfs type=require
