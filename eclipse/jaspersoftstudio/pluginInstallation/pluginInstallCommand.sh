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

# This script allows to update the specified Eclipse installation with the Jaspersoft Studio plugin.
# First parameter: eclipse folder
# Second parameter: tar.gz file
# Third parameter: release dedicated update site 1
# Fourth parameter: release dedicated update site 2
cd $1
rm -fr eclipse
tar -zxvf $2
cd eclipse
./eclipse \
-clean -purgeHistory \
-application org.eclipse.equinox.p2.director \
-noSplash \
-repository \
$JSS_UPDATE_SITE,\
$XTEXT_UPDATE_SITE,\
$ORBIT_UPDATE_SITE,\
$NEBULA_UPDATE_SITE,\
$3,\
$4 \
-installIUs \
com.jaspersoft.studio.feature.feature.group \
-vmargs -Declipse.p2.mirrors=true -Djava.net.preferIPv4Stack=true
