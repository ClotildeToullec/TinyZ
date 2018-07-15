sending messages - public
textMessage: aStringOrText inChannel: aChannel
	^ self
		message: (self message content: aStringOrText)
		toChannel: aChannel