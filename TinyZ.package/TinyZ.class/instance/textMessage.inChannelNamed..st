sending messages - public
textMessage: aStringOrText inChannelNamed: aChannel
	^ self
		message: (self message content: aStringOrText)
		toServer: 'LucasFilms'
		channelNamed: aChannel