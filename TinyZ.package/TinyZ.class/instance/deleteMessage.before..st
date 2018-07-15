messages deletion
deleteMessage: anInteger before: message
	| userMessages |
	userMessages := (restApi messagesBefore: message inChannel: (self getChannelOfMessage: message))
		select: [ :mes | mes author id = message author id ].
	self deleteMessage: (userMessages at: anInteger).
	self deleteMessage: message