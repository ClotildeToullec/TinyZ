messaging - public
sendMessage: aMessage toServer: aServer channelNamed: aChannel
	^ aMessage sendToServer: aServer channel: aChannel