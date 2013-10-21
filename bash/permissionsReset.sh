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

# This script simply resets the file permissions to a 755 mask for directories and 644 for files.
# It can be used for example in case you need to restore a bunch of directories to a common default.
FILE_PMASK=644	# [rw-r--r--]
DIR_PMASK=755	# [rwxr-xr-x]
TARGET_DIR='./'

# Print help if needed
if [ "$1" == "--help" ]
then 
	echo "# This script simply resets the file permission for a specific set of files and directories."
	echo "# Usage (compact): 'permissionsReset.sh'"
	echo "# is equivalent to:"
	echo "# Usage (extended): 'permissionsReset.sh ./ 755 644'"
	echo "# The first parameter is the root folder. Numeric parameters are the permission masks for directories and files respectively."
	exit 0
fi

# Try to read custom parameters
if [ -n "$1" ]; then TARGET_DIR=$1; fi
if [ -n "$2" ]; then DIR_PMASK=$2; fi
if [ -n "$3" ]; then FILE_PMASK=$3; fi

# All files in current dir and subdirectories
find $TARGET_DIR -type f -exec chmod $FILE_PMASK '{}' \;
# All folders in current dir and subdirectories
find $TARGET_DIR -type d -exec chmod $DIR_PMASK '{}' \;
