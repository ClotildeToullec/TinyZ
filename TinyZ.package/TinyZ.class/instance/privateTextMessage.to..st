sending messages - dm
privateTextMessage: aStringOrText to: aUser
	^ self privateMessage: (self message content: aStringOrText) to: aUser