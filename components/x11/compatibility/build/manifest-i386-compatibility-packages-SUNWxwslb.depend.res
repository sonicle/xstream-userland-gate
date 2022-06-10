set name=pkg.fmri value=pkg:/compatibility/packages/SUNWxwslb@0.5.11,5.11-2020.1.1.2
set name=com.oracle.info.name value=x11-compatibility
set name=userland.info.git-remote value=git@github.com:sonicle/xstream-userland-gate.git
set name=userland.info.git-branch value=master
set name=userland.info.git-rev value=b13ee4d1289d7d1105f6e463a91e7566696c8ed9
set name=pkg.summary value="X Window System lint libraries group"
set name=pkg.description value="A group package that provides the same set of lint libraries for X11 client libraries as the SUNWxwslb package for prior Solaris releases"
set name=info.classification value=org.opensolaris.category.2008:System/X11
set name=com.oracle.info.version value=0.5.11
set name=variant.arch value=i386

depend facet.devel=true fmri=pkg:/x11/library/libfs type=require
depend facet.devel=true fmri=pkg:/x11/library/libx11 type=require
depend facet.devel=true fmri=pkg:/x11/library/libxau type=require
depend facet.devel=true fmri=pkg:/x11/library/libxdmcp type=require
depend facet.devel=true fmri=pkg:/x11/library/libxext type=require
depend facet.devel=true fmri=pkg:/x11/library/libxmu type=require
depend facet.devel=true fmri=pkg:/x11/library/libxscrnsaver type=require
depend facet.devel=true fmri=pkg:/x11/library/libxv type=require
