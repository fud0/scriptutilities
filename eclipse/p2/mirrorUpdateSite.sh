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

# This script allows to mirror an existing P2 repository or update site
LOCAL_REPOSITORY_DESTINATION=/tmp/localRepoDump
TARGET_REPOSITORY=$1
ECLIPSE_CURR_PATH=.

# Print help if needed
if [ "$1" == "--help" ]
then 
	echo "# This script allows to mirror an existing P2 repository or update site."
	echo "# Usage (compact): 'mirrorUpdateSite.sh <TARGET_REPOSITORY_LOCATION>'"
	echo "# is equivalent to:"
	echo "# Usage (extended): 'mirrorUpdateSite.sh <TARGET_REPOSITORY_LOCATION> /tmp/localRepoDump'"
	echo "# The first parameter is the repository to be mirrored (mandatory). The second optional parameter is the destination folder for the repository."
	echo "# You can additionally specify a third parameter that is the location of the Eclipse installation to use."
	exit 0
fi

# Try to read custom parameters
if [ -z "$TARGET_REPOSITORY" ]
then
	echo "Unable to locate a valid target repository to dump. Please specify it as first parameter"
	exit 1
fi
if [ -n "$2" ]; then LOCAL_REPOSITORY_DESTINATION=$2; fi
if [ -n "$3" ]; then ECLIPSE_CURR_PATH=$3; fi

# Launch P2 Command(s)
$ECLIPSE_CURR_PATH/eclipse -debug -consolelog -nosplash -verbose \
-application org.eclipse.equinox.p2.metadata.repository.mirrorApplication \
-source $TARGET_REPOSITORY -destination $LOCAL_REPOSITORY_DESTINATION -writeMode clean

$ECLIPSE_CURR_PATH/eclipse -debug -consolelog -nosplash -verbose \
-application org.eclipse.equinox.p2.artifact.repository.mirrorApplication \
-source $TARGET_REPOSITORY -destination $LOCAL_REPOSITORY_DESTINATION -writeMode clean

