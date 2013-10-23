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

# ECLIPSE 3.6.x HELIOS
ECLIPSE360_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse360
ECLIPSE360_TARGZ=eclipse-SDK-3.6-macosx-cocoa-x86_64.tar.gz
ECLIPSE361_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse361
ECLIPSE361_TARGZ=eclipse-SDK-3.6.1-macosx-cocoa-x86_64.tar.gz
ECLIPSE362_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse362
ECLIPSE362_TARGZ=eclipse-SDK-3.6.2-macosx-cocoa-x86_64.tar.gz
HELIOS_UPDATESITE_1=http://download.eclipse.org/releases/helios
HELIOS_UPDATESITE_2=http://download.eclipse.org/eclipse/updates/3.6
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE360_FOLDER $ECLIPSE360_TARGZ $HELIOS_UPDATESITE_1 $HELIOS_UPDATESITE_2 
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE361_FOLDER $ECLIPSE361_TARGZ $HELIOS_UPDATESITE_1 $HELIOS_UPDATESITE_2 
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE362_FOLDER $ECLIPSE362_TARGZ $HELIOS_UPDATESITE_1 $HELIOS_UPDATESITE_2