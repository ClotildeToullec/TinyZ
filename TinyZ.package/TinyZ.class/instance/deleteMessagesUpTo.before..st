messages deletion
deleteMessagesUpTo: anInteger before: message
	| userMessages |
	userMessages := (restApi messagesBefore: message inChannel: (self getChannelOfMessage: message))
		select: [ :mes | mes author id = message author id ].
	1 to: anInteger do: [ :i | self deleteMessage: (userMessages at: i) ].
	self deleteMessage: message