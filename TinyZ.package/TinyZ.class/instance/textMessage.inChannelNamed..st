messaging - public
textMessage: aStringOrText inChannelNamed: aChannel
	^ self
		sendMessage: (self message content: aStringOrText)
		toServer: 'LucasFilms'
		channelNamed: aChannel