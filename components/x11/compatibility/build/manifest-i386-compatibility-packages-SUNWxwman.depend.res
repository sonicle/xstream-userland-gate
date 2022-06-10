set name=com.oracle.info.version value=0.5.11
set name=variant.arch value=i386
set name=pkg.fmri value=pkg:/compatibility/packages/SUNWxwman@0.5.11,5.11-2020.1.1.2
set name=com.oracle.info.name value=x11-compatibility
set name=userland.info.git-remote value=git@github.com:sonicle/xstream-userland-gate.git
set name=userland.info.git-branch value=master
set name=userland.info.git-rev value=b13ee4d1289d7d1105f6e463a91e7566696c8ed9
set name=pkg.summary value="X Window System user man pages group"
set name=pkg.description value="A group package that provides the same core set of X11 user manual pages as the SUNWxwman & SUNWxorg-client-docs package for prior Solaris releases"
set name=facet.doc.man value=true
set name=info.classification value=org.opensolaris.category.2008:System/X11
set name=org.opensolaris.consolidation value=sonicle.com
legacy arch=i386 category=system desc="Documentation for X Window System client programs based on X.Org Foundation open source release" hotline="Please contact your local service provider" name="X.Org Foundation X client programs documentation" pkg=SUNWxorg-client-docs vendor="Project XStreamOS" version=11.11.0,REV=2010.05.25.01.00
legacy arch=i386 category=system desc="X Window System online user man pages" hotline="Please contact your local service provider" name="X Window System online user man pages" pkg=SUNWxwman vendor="Project XStreamOS" version=11.11.0,REV=2010.05.25.01.00

depend facet.doc.man=true fmri=pkg:/benchmark/x11perf type=require
depend facet.doc.man=true fmri=pkg:/desktop/window-manager/twm type=require
depend facet.doc.man=true fmri=pkg:/developer/build/imake type=require
depend facet.doc.man=true fmri=pkg:/developer/build/makedepend type=require
depend facet.doc.man=true fmri=pkg:/diagnostic/constype type=require
depend facet.doc.man=true fmri=pkg:/diagnostic/xload type=require
depend facet.doc.man=true fmri=pkg:/document/viewer/xditview type=require
depend facet.doc.man=true fmri=pkg:/editor/xedit type=require
depend facet.doc.man=true fmri=pkg:/image/editor/bitmap type=require
depend facet.doc.man=true fmri=pkg:/image/xcursorgen type=require
depend facet.doc.man=true fmri=pkg:/terminal/luit type=require
depend facet.doc.man=true fmri=pkg:/terminal/xterm type=require
depend facet.doc.man=true fmri=pkg:/x11/colormap-utilities type=require
depend facet.doc.man=true fmri=pkg:/x11/demo type=require
depend facet.doc.man=true fmri=pkg:/x11/diagnostic/x11-info-clients type=require
depend facet.doc.man=true fmri=pkg:/x11/diagnostic/xev type=require
depend facet.doc.man=true fmri=pkg:/x11/diagnostic/xscope type=require
depend facet.doc.man=true fmri=pkg:/x11/documentation/xorg-docs type=require
depend facet.doc.man=true fmri=pkg:/x11/font-utilities type=require
depend facet.doc.man=true fmri=pkg:/x11/keyboard/xkb-utilities type=require
depend facet.doc.man=true fmri=pkg:/x11/library/libice type=require
depend facet.doc.man=true fmri=pkg:/x11/library/libxpm type=require
depend facet.doc.man=true fmri=pkg:/x11/network/x11-network-proxies type=require
depend facet.doc.man=true fmri=pkg:/x11/oclock type=require
depend facet.doc.man=true fmri=pkg:/x11/session/sessreg type=require
depend facet.doc.man=true fmri=pkg:/x11/session/smproxy type=require
depend facet.doc.man=true fmri=pkg:/x11/session/xauth type=require
depend facet.doc.man=true fmri=pkg:/x11/session/xinit type=require
depend facet.doc.man=true fmri=pkg:/x11/x11-server-utilities type=require
depend facet.doc.man=true fmri=pkg:/x11/x11-window-dump type=require
depend facet.doc.man=true fmri=pkg:/x11/xbiff type=require
depend facet.doc.man=true fmri=pkg:/x11/xcalc type=require
depend facet.doc.man=true fmri=pkg:/x11/xclipboard type=require
depend facet.doc.man=true fmri=pkg:/x11/xconsole type=require
depend facet.doc.man=true fmri=pkg:/x11/xfd type=require
depend facet.doc.man=true fmri=pkg:/x11/xfontsel type=require
depend facet.doc.man=true fmri=pkg:/x11/xfs type=require
depend facet.doc.man=true fmri=pkg:/x11/xfs/xfs-utilities type=require
depend facet.doc.man=true fmri=pkg:/x11/xkill type=require
depend facet.doc.man=true fmri=pkg:/x11/xlock type=require
depend facet.doc.man=true fmri=pkg:/x11/xmag type=require
depend facet.doc.man=true fmri=pkg:/x11/xman type=require
depend facet.doc.man=true fmri=pkg:/x11/xt-resource-utilities type=require
