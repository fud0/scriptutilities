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

# Testing all ECLIPSE 4.3.x KEPLER versions
ECLIPSE430_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse430
ECLIPSE430_TARGZ=eclipse-SDK-4.3-macosx-cocoa-x86_64.tar.gz
ECLIPSE431_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse431
ECLIPSE431_TARGZ=eclipse-SDK-4.3.1-macosx-cocoa-x86_64.tar.gz
#ECLIPSE432_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse432
#ECLIPSE432_TARGZ=eclipse-SDK-4.3.2-macosx-cocoa-x86_64.tar.gz
KEPLER_UPDATESITE_1=http://download.eclipse.org/releases/juno
KEPLER_UPDATESITE_2=http://download.eclipse.org/eclipse/updates/4.3
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE430_FOLDER $ECLIPSE430_TARGZ $KEPLER_UPDATESITE_1 $KEPLER_UPDATESITE_2 
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE431_FOLDER $ECLIPSE431_TARGZ $KEPLER_UPDATESITE_1 $KEPLER_UPDATESITE_2 
#source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE432_FOLDER $ECLIPSE432_TARGZ $KEPLER_UPDATESITE_1 $KEPLER_UPDATESITE_2