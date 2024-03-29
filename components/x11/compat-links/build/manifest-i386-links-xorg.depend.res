set name=com.oracle.info.version value=7.7
set name=variant.arch value=i386
set name=pkg.fmri value=pkg:/x11/compatibility/links-xorg@7.7,5.11-2020.1.1.1
set name=com.oracle.info.name value=compat-links
set name=userland.info.git-remote value=git@github.com:sonicle/xstream-userland-gate.git
set name=userland.info.git-branch value=master
set name=userland.info.git-rev value=b13ee4d1289d7d1105f6e463a91e7566696c8ed9
set name=pkg.summary value="Xorg -"
set name=description value="Symbolic links for X Window System software compatibility with other releases"
set name=info.classification value=org.opensolaris.category.2008:System/X11
set name=org.opensolaris.consolidation value=sonicle.com
dir group=bin mode=0755 owner=root path=usr/X11
dir group=bin mode=0755 owner=root path=usr/X11/lib
dir group=bin mode=0755 owner=root path=usr/X11/lib/X11
dir group=bin mode=0755 owner=root path=usr/X11/lib/X11/fonts
link path=usr/X11R6 target=X11
link path=usr/openwin target=X11
link path=usr/X11/lib/X11/fonts/100dpi pkg.linted.userland.action002.0=true target=../../../../share/fonts/X11/100dpi-ISO8859-1
link path=usr/X11/lib/X11/fonts/75dpi pkg.linted.userland.action002.0=true target=../../../../share/fonts/X11/75dpi-ISO8859-1
link path=usr/X11/lib/X11/fonts/TrueType pkg.linted.userland.action002.0=true target=../../../../share/fonts/TrueType
link path=usr/X11/lib/X11/fonts/misc pkg.linted.userland.action002.0=true target=../../../../share/fonts/X11/misc
link path=usr/X11/lib/X11/xserver pkg.linted.userland.action002.0=true target=../../../lib/xorg

