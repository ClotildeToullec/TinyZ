sending messages - dm
privateTextMessage: aStringOrText toUserNamed: username
	^ self privateMessage: (self message content: aStringOrText) toUserNamed: username