commands
delCommand: message option: option parameter: parameter
	| numberOfMesages |
	numberOfMesages := parameter isNil
		ifTrue: [ 1 ]
		ifFalse: [ parameter ].
	numberOfMesages > 10
		ifTrue: [ ^ self ].
	numberOfMesages = 0
		ifTrue: [ self deleteMessage: message ].
	option ifEmpty: [ self deleteMessage: numberOfMesages before: message ].
	option = 'all'
		ifTrue: [ self deleteMessagesUpTo: numberOfMesages before: message ]