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

# This script simply removes the junky .DS_Store files, starting from the current
# directory, subdirectories included.
TARGET_DIR='.'

# Print help if needed
if [ "$1" == "--help" ]
then 
	echo "# This script simply removes the junky .DS_Store files, starting from specified directory if any, current directory otherwise"
	echo "# Usage (compact): 'dsStoreDeleteAll.sh'"
	echo "# is equivalent to:"
	echo "# Usage (extended): 'dsStoreDeleteAll.sh .'"
	exit 0
fi

# Try to read custom parameters
if [ -n "$1" ]; then TARGET_DIR=$1; fi

find $TARGET_DIR -name '*.DS_Store' -type f -delete