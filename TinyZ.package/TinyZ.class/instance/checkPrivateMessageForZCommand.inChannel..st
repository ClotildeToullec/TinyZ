commands - privateMessages
checkPrivateMessageForZCommand: message inChannel: channel
	(message content asLowercase includesSubstring: 'help')
		ifTrue: [ self sendHELPResponseInPrivateChannel: channel.
			^ self ].
	(message content asLowercase includesSubstring: 'del')
		ifTrue: [ self sendDELResponseInPrivateChannel: channel.
			^ self ].
	self respondToNoCommandMessage: message inPrivateChannel: channel