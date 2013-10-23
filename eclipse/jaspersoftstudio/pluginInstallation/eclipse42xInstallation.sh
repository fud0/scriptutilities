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

# Testing all ECLIPSE 4.2.x JUNO versions
ECLIPSE420_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse420
ECLIPSE420_TARGZ=eclipse-SDK-4.2-macosx-cocoa-x86_64.tar.gz
ECLIPSE421_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse421
ECLIPSE421_TARGZ=eclipse-SDK-4.2.1-macosx-cocoa-x86_64.tar.gz
ECLIPSE422_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse422
ECLIPSE422_TARGZ=eclipse-SDK-4.2.2-macosx-cocoa-x86_64.tar.gz
JUNO42_UPDATESITE_1=http://download.eclipse.org/releases/juno
JUNO42_UPDATESITE_2=http://download.eclipse.org/eclipse/updates/4.2
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE420_FOLDER $ECLIPSE420_TARGZ $JUNO42_UPDATESITE_1 $JUNO42_UPDATESITE_2 
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE421_FOLDER $ECLIPSE421_TARGZ $JUNO42_UPDATESITE_1 $JUNO42_UPDATESITE_2 
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE422_FOLDER $ECLIPSE422_TARGZ $JUNO42_UPDATESITE_1 $JUNO42_UPDATESITE_2