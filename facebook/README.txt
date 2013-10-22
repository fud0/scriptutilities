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

The folder contains a list of PHP script snippets that can be used as a starting point
when you want to experiment with Facebook (Graph API & FQL).
The facebook-php-sdk folder contains the dedicated SDK. You can download the latest sources
from the following address: https://github.com/facebook/facebook-php-sdk
Usually in the PHP files you will have to configure the following mandatory information:
	- <YOUR_APPID>: the application ID
	- <YOUR_APPSECRET>: the application secret
Most of the above information can be retrieved in your Developer's Facebook Page.

The list of scripts:
	- readPageEvents.php
		Allows to retrieve a list of all events for a specific public page.
		No specific time filtering is applied. You can edit it quite easily.
		This is an example of how FQL can be used.
