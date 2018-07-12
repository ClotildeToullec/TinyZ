messaging - private
textPrivateMessage: aStringOrText to: aUser
	^ self sendInPrivate: (self message content: aStringOrText) to: aUser