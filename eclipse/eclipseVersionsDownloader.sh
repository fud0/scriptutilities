#!/bin/bash

#-------------------------------------------------------------------------------
# Copyright (C) 2013 Buzzcoders.com. All rights reserved.
# http://www.buzzcoders.com
# 
# This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
#     Massimo Rabbi - mrabbi@users.sourceforge.net
#-------------------------------------------------------------------------------

# This script downloads the Eclipse SDK packages for different platforms.
# Available platforms include:
#  - cocoa 32bit (--macsox32)
#  - cocoa 64bit (--macsox64)
#  - windows 32bit (--windows32)
#  - windows 64bit (--windows64)
#  - linux 32bit (--linux32)
#  - linux 64bit (--linux64)
#
# The comprehensive option --all downloads all versions.
# Currently the Eclipse versions span from 3.6.0 to 4.3.1, the latest available.

# Mac OS X 64-bit
if [ "$1" == "--macosx64" -o "$1" == "--all" ]
then 
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6-201006080911/eclipse-SDK-3.6-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.1-201009090800/eclipse-SDK-3.6.1-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.2-201102101200/eclipse-SDK-3.6.2-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7-201106131736/eclipse-SDK-3.7-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.1-201109091335/eclipse-SDK-3.7.1-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.2-201202080800/eclipse-SDK-3.7.2-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8-201206081200/eclipse-SDK-3.8-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.1-201209141540/eclipse-SDK-3.8.1-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.2-201301310800/eclipse-SDK-3.8.2-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2-201206081400/eclipse-SDK-4.2-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.1-201209141800/eclipse-SDK-4.2.1-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.2-201302041200/eclipse-SDK-4.2.2-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3-201306052000/eclipse-SDK-4.3-macosx-cocoa-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3.1-201309111000/eclipse-SDK-4.3.1-macosx-cocoa-x86_64.tar.gz
fi

# Mac OS X 32-bit
if [ "$1" == "--macosx32" -o "$1" == "--all" ]
then 
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6-201006080911/eclipse-SDK-3.6-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.1-201009090800/eclipse-SDK-3.6.1-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.2-201102101200/eclipse-SDK-3.6.2-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7-201106131736/eclipse-SDK-3.7-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.1-201109091335/eclipse-SDK-3.7.1-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.2-201202080800/eclipse-SDK-3.7.2-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8-201206081200/eclipse-SDK-3.8-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.1-201209141540/eclipse-SDK-3.8.1-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.2-201301310800/eclipse-SDK-3.8.2-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2-201206081400/eclipse-SDK-4.2-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.1-201209141800/eclipse-SDK-4.2.1-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.2-201302041200/eclipse-SDK-4.2.2-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3-201306052000/eclipse-SDK-4.3-macosx-cocoa.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3.1-201309111000/eclipse-SDK-4.3.1-macosx-cocoa.tar.gz
fi

# Windows 64-bit
if [ "$1" == "--windows64" -o "$1" == "--all" ]
then 
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6-201006080911/eclipse-SDK-3.6-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.1-201009090800/eclipse-SDK-3.6.1-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.2-201102101200/eclipse-SDK-3.6.2-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7-201106131736/eclipse-SDK-3.7-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.1-201109091335/eclipse-SDK-3.7.1-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.2-201202080800/eclipse-SDK-3.7.2-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8-201206081200/eclipse-SDK-3.8-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.1-201209141540/eclipse-SDK-3.8.1-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.2-201301310800/eclipse-SDK-3.8.2-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2-201206081400/eclipse-SDK-4.2-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.1-201209141800/eclipse-SDK-4.2.1-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.2-201302041200/eclipse-SDK-4.2.2-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3-201306052000/eclipse-SDK-4.3-win32-x86_64.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3.1-201309111000/eclipse-SDK-4.3.1-win32-x86_64.zip
fi

# Windows 32-bit
if [ "$1" == "--windows32" -o "$1" == "--all" ]
then 
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6-201006080911/eclipse-SDK-3.6-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.1-201009090800/eclipse-SDK-3.6.1-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.2-201102101200/eclipse-SDK-3.6.2-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7-201106131736/eclipse-SDK-3.7-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.1-201109091335/eclipse-SDK-3.7.1-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.2-201202080800/eclipse-SDK-3.7.2-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8-201206081200/eclipse-SDK-3.8-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.1-201209141540/eclipse-SDK-3.8.1-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.2-201301310800/eclipse-SDK-3.8.2-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2-201206081400/eclipse-SDK-4.2-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.1-201209141800/eclipse-SDK-4.2.1-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.2-201302041200/eclipse-SDK-4.2.2-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3-201306052000/eclipse-SDK-4.3-win32.zip
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3.1-201309111000/eclipse-SDK-4.3.1-win32.zip
fi

# Linux GTK-64-bit
if [ "$1" == "--linux64" -o "$1" == "--all" ]
then 
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6-201006080911/eclipse-SDK-3.6-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.1-201009090800/eclipse-SDK-3.6.1-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.2-201102101200/eclipse-SDK-3.6.2-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7-201106131736/eclipse-SDK-3.7-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.1-201109091335/eclipse-SDK-3.7.1-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.2-201202080800/eclipse-SDK-3.7.2-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8-201206081200/eclipse-SDK-3.8-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.1-201209141540/eclipse-SDK-3.8.1-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.2-201301310800/eclipse-SDK-3.8.2-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2-201206081400/eclipse-SDK-4.2-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.1-201209141800/eclipse-SDK-4.2.1-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.2-201302041200/eclipse-SDK-4.2.2-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3-201306052000/eclipse-SDK-4.3-linux-gtk-x86_64.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3.1-201309111000/eclipse-SDK-4.3.1-linux-gtk-x86_64.tar.gz
fi

# Linux GTK-32-bit
if [ "$1" == "--linux32" -o "$1" == "--all" ]
then 
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6-201006080911/eclipse-SDK-3.6-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.1-201009090800/eclipse-SDK-3.6.1-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.6.2-201102101200/eclipse-SDK-3.6.2-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7-201106131736/eclipse-SDK-3.7-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.1-201109091335/eclipse-SDK-3.7.1-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.2-201202080800/eclipse-SDK-3.7.2-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8-201206081200/eclipse-SDK-3.8-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.1-201209141540/eclipse-SDK-3.8.1-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops/R-3.8.2-201301310800/eclipse-SDK-3.8.2-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2-201206081400/eclipse-SDK-4.2-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.1-201209141800/eclipse-SDK-4.2.1-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.2.2-201302041200/eclipse-SDK-4.2.2-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3-201306052000/eclipse-SDK-4.3-linux-gtk.tar.gz
	curl -O http://archive.eclipse.org/eclipse/downloads/drops4/R-4.3.1-201309111000/eclipse-SDK-4.3.1-linux-gtk.tar.gz
fi
