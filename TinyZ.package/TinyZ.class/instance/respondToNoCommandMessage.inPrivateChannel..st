commands - privateMessages
respondToNoCommandMessage: message inPrivateChannel: channel
	| lastMessages |
	lastMessages := (restApi messagesBefore: message inChannel: channel)
		select: [ :mes | DateAndTime now - mes timestamp < 1 hour ].
	lastMessages
		ifEmpty: [ self sendWelcomeResponseInPrivateChannel: channel.
			^ self ].
	lastMessages size > 4
		ifTrue: [ lastMessages := lastMessages first: 4 ].
	lastMessages
		detect: [ :mes | mes author id = self me id ]
		ifNone: [ self sendStopHarassingMeResponseInPrivateChannel: channel ]