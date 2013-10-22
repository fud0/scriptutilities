#!/bin/bash

#-------------------------------------------------------------------------------
# Copyright (C) 2010 - 2013 Buzzcoders.com. All rights reserved.
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

# Testing all ECLIPSE 3.8.x JUNO versions
ECLIPSE380_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse380
ECLIPSE380_TARGZ=eclipse-SDK-3.8-macosx-cocoa-x86_64.tar.gz
ECLIPSE381_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse381
ECLIPSE381_TARGZ=eclipse-SDK-3.8.1-macosx-cocoa-x86_64.tar.gz
ECLIPSE382_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse382
ECLIPSE382_TARGZ=eclipse-SDK-3.8.2-macosx-cocoa-x86_64.tar.gz
JUNO38_UPDATESITE_1=http://download.eclipse.org/releases/juno
JUNO38_UPDATESITE_2=http://download.eclipse.org/eclipse/updates/3.8
source pluginInstallCommand.sh $ECLIPSE380_FOLDER $ECLIPSE380_TARGZ $JUNO38_UPDATESITE_1 $JUNO38_UPDATESITE_2 
source pluginInstallCommand.sh $ECLIPSE381_FOLDER $ECLIPSE381_TARGZ $JUNO38_UPDATESITE_1 $JUNO38_UPDATESITE_2 
source pluginInstallCommand.sh $ECLIPSE382_FOLDER $ECLIPSE382_TARGZ $JUNO38_UPDATESITE_1 $JUNO38_UPDATESITE_2