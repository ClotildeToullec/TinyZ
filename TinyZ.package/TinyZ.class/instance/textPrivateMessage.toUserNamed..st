messaging - private
textPrivateMessage: aStringOrText toUserNamed: username
	^ self sendInPrivate: (self message content: aStringOrText) toUserNamed: username