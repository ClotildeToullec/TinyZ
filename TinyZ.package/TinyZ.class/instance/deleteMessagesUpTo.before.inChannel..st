commands - deletion
deleteMessagesUpTo: anInteger before: message inChannel: channel
	| userMessages |
	userMessages := (restApi messagesBefore: message inChannel: channel)
		select: [ :mes | mes author id = message author id ].
	1 to: anInteger do: [ :i | self deleteMessage: (userMessages at: i) ].
	self deleteMessage: message