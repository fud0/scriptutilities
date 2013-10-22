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

# This comprehensive script allows to test the Jaspersoft Studio plug-in installation
# in the different Eclipse versions supported. 
# Right now we support 3.6.x, 3.7.x, 3.8.x, 4.2.x, 4.3.x
# We use the Eclipse SDK version as base package.
# Archived Eclipses: http://archive.eclipse.org/eclipse/downloads/

# Base location for the plugin installation tests
ECLIPSES_ROOT_FOLDER=/Users/mrabbi/Development/JaspersoftStudio/tests/pluginInstall/
# Base location for the Eclipse installation that will be used for P2 operations
BASE_ECLIPSE_FOLDER=/Users/mrabbi/Development/JaspersoftStudio/tests/eclipse
# Update sites
JSS_UPDATE_SITE=http://jasperstudio.sourceforge.net/updates/
XTEXT_UPDATE_SITE=http://download.eclipse.org/modeling/tmf/xtext/updates/composite/releases/
ORBIT_UPDATE_SITE=http://download.eclipse.org/tools/orbit/downloads/drops/R20130827064939/repository/
NEBULA_UPDATE_SITE=http://download.eclipse.org/technology/nebula/snapshot

# Test the Jaspersoft Studio plugin installation on different Eclipse versions
source eclipse36xInstallation.sh
source eclipse37xInstallation.sh
source eclipse38xInstallation.sh
source eclipse42xInstallation.sh
source eclipse43xInstallation.sh
