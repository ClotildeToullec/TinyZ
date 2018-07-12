commands - parsing
parseMessage: message forZCommandInChannel: channel
	| parsedMessage prefix command option parameter |
	parsedMessage := self parseZCommandMessage: message.
	prefix := parsedMessage first.
	prefix ifNil: [ ^ self ].
	command := parsedMessage second asLowercase.
	option := parsedMessage third ifNotNil: [ parsedMessage third asLowercase ].
	parameter := parsedMessage fourth.
	command = 'del'
		ifTrue: [ self
				zdelCommandInMessage: message
				inChannel: channel
				option: option
				parameter: parameter ]