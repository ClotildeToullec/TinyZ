messaging - public
textMessage: aStringOrText inChannel: aChannel
	^ self
		sendMessage: (self message content: aStringOrText)
		toChannel: aChannel