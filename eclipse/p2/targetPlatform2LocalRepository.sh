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

# This script can be used to generate a local P2 repository using as source
# the target platform you have prepared for your PDE.
DESTINATION_METADATA_REPOSITORY=/tmp/localP2Repo
DESTINATION_ARTIFACT_REPOSITORY=/tmp/localP2Repo
SOURCE_TARGET_PLATFORM=$1
ECLIPSE_CURR_PATH=.

# Print help if needed
if [ "$1" == "--help" ]
then 
	echo "# This script can be used to generate a local P2 repository using as source the target platform you have prepared for your PDE."
	echo "# Usage (compact): 'targetPlatform2LocalRepository.sh <SOURCE_TARGET_PLATFORM_LOCATION>'"
	echo "# is equivalent to:"
	echo "# Usage (extended): 'targetPlatform2LocalRepository.sh <SOURCE_TARGET_PLATFORM_LOCATION> /tmp/localP2Repo /tmp/localP2Repo'"
	echo "# The first parameter is the source target platform (mandatory). The second and third optional parameter are the destination metadata and artifact repository respectively."
	echo "# You can additionally specify a fourth parameter that is the location of the Eclipse installation to use."
	exit 0
fi

# Try to read custom parameters
if [ -z "$SOURCE_TARGET_PLATFORM" ]
then
	echo "Unable to locate a valid target platform. Please specify it as first parameter"
	exit 1
fi
if [ -n "$2" ]; then DESTINATION_METADATA_REPOSITORY=$2; fi
if [ -n "$3" ]; then DESTINATION_ARTIFACT_REPOSITORY=$3; fi
if [ -n "$ECLIPSE_INSTALL_LOCATION" ]; then ECLIPSE_CURR_PATH=$4; fi

# Launch P2 Command
$ECLIPSE_CURR_PATH/eclipse -debug -consolelog -nosplash -verbose \
-application org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher \
-metadataRepository file:$DESTINATION_METADATA_REPOSITORY \
-artifactRepository file:$DESTINATION_ARTIFACT_REPOSITORY \
-source $SOURCE_TARGET_PLATFORM -compress -append -publishArtifacts