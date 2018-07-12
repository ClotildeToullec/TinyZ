commands - deletion
zdelCommandInMessage: message inChannel: channel option: option parameter: parameter
	| numberOfMesages |
	numberOfMesages := (parameter isNil or: [ parameter isZero ])
		ifTrue: [ 1 ]
		ifFalse: [ parameter ].
	numberOfMesages > 10
		ifTrue: [ ^ self ].
	option ifNil: [ self deleteMessage: numberOfMesages before: message inChannel: channel ].
	option = 'all'
		ifTrue: [ self deleteMessagesUpTo: numberOfMesages before: message inChannel: channel ]