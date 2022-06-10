set name=com.oracle.info.version value=0.5.11
set name=variant.arch value=i386
set name=pkg.fmri value=pkg:/compatibility/packages/SUNWxwinc@0.5.11,5.11-2020.1.1.2
set name=com.oracle.info.name value=x11-compatibility
set name=userland.info.git-remote value=git@github.com:sonicle/xstream-userland-gate.git
set name=userland.info.git-branch value=master
set name=userland.info.git-rev value=b13ee4d1289d7d1105f6e463a91e7566696c8ed9
set name=pkg.summary value="X Window System include files group"
set name=pkg.description value="A group package that provides the same core set of X11 headers and developer files as the SUNWxwinc package for prior Solaris releases"
set name=facet.devel value=true
set name=info.classification value=org.opensolaris.category.2008:Development/X11
set name=org.opensolaris.consolidation value=sonicle.com
legacy arch=i386 category=system desc="X Window System header & pkgconfig files needed to build software" hotline="Please contact your local service provider" name="X Window System include files" pkg=SUNWxwinc vendor="Project XStreamOS" version=11.11.0,REV=2010.05.25.01.00

depend facet.devel=true fmri=pkg:/developer/build/autoconf/xorg-macros type=require
depend facet.devel=true fmri=pkg:/x11/data/xbitmaps type=require
depend facet.devel=true fmri=pkg:/x11/header/x11-protocols type=require
depend facet.devel=true fmri=pkg:/x11/library/libfontenc type=require
depend facet.devel=true fmri=pkg:/x11/library/libfs type=require
depend facet.devel=true fmri=pkg:/x11/library/libice type=require
depend facet.devel=true fmri=pkg:/x11/library/libsm type=require
depend facet.devel=true fmri=pkg:/x11/library/libx11 type=require
depend facet.devel=true fmri=pkg:/x11/library/libxau type=require
depend facet.devel=true fmri=pkg:/x11/library/libxcomposite type=require
depend facet.devel=true fmri=pkg:/x11/library/libxcursor type=require
depend facet.devel=true fmri=pkg:/x11/library/libxdamage type=require
depend facet.devel=true fmri=pkg:/x11/library/libxdmcp type=require
depend facet.devel=true fmri=pkg:/x11/library/libxevie type=require
depend facet.devel=true fmri=pkg:/x11/library/libxfixes type=require
depend facet.devel=true fmri=pkg:/x11/library/libxfont type=require
depend facet.devel=true fmri=pkg:/x11/library/libxkbfile type=require
depend facet.devel=true fmri=pkg:/x11/library/libxmu type=require
depend facet.devel=true fmri=pkg:/x11/library/libxmuu type=require
depend facet.devel=true fmri=pkg:/x11/library/libxp type=require
depend facet.devel=true fmri=pkg:/x11/library/libxpm type=require
depend facet.devel=true fmri=pkg:/x11/library/libxrandr type=require
depend facet.devel=true fmri=pkg:/x11/library/libxrender type=require
depend facet.devel=true fmri=pkg:/x11/library/libxres type=require
depend facet.devel=true fmri=pkg:/x11/library/libxtst type=require
depend facet.devel=true fmri=pkg:/x11/library/libxv type=require
depend facet.devel=true fmri=pkg:/x11/library/libxvmc type=require
depend facet.devel=true fmri=pkg:/x11/library/toolkit/libxt type=require
depend facet.devel=true fmri=pkg:/x11/library/xtrans type=require
