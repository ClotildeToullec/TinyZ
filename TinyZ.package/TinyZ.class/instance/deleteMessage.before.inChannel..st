commands - deletion
deleteMessage: anInteger before: message inChannel: channel
	| userMessages |
	userMessages := (restApi messagesBefore: message inChannel: channel)
		select: [ :mes | mes author id = message author id ].
	self deleteMessage: (userMessages at: anInteger).
	self deleteMessage: message