ann - message reception
newMessagePosted: ann
	| message channel |
	message := ann payload eventData.
	channel := self getChannelOfMessage: message.
	channel ifNil: [ ^ self ].
	(channel isMemberOf: DSGuildTextChannel)
		ifTrue: [ self publicMessagePosted: message inChannel: channel ]
		ifFalse: [ self dmReceived: message ]