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

# Testing all ECLIPSE 3.7.x INDIGO versions
ECLIPSE370_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse370
ECLIPSE370_TARGZ=eclipse-SDK-3.7-macosx-cocoa-x86_64.tar.gz
ECLIPSE371_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse371
ECLIPSE371_TARGZ=eclipse-SDK-3.7.1-macosx-cocoa-x86_64.tar.gz
ECLIPSE372_FOLDER=$ECLIPSES_ROOT_FOLDER/eclipse372
ECLIPSE372_TARGZ=eclipse-SDK-3.7.2-macosx-cocoa-x86_64.tar.gz
INDIGO_UPDATESITE_1=http://download.eclipse.org/releases/indigo
INDIGO_UPDATESITE_2=http://download.eclipse.org/eclipse/updates/3.7
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE370_FOLDER $ECLIPSE370_TARGZ $INDIGO_UPDATESITE_1 $INDIGO_UPDATESITE_2 
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE371_FOLDER $ECLIPSE371_TARGZ $INDIGO_UPDATESITE_1 $INDIGO_UPDATESITE_2 
source $BASE_SCRIPTS_LOCATION/pluginInstallCommand.sh $ECLIPSE372_FOLDER $ECLIPSE372_TARGZ $INDIGO_UPDATESITE_1 $INDIGO_UPDATESITE_2