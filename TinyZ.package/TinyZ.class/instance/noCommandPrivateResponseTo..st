dm responses
noCommandPrivateResponseTo: aDSMessage
	"Sends a welcome message if the user di not write for more than an hour.
Sends an annoyed message if the user speaks anything but a keyword. One annoyed response every five vain message."

	| channel lastMessages |
	channel := self getPrivateChannelWith: aDSMessage author.
	lastMessages := (restApi messagesBefore: aDSMessage inChannel: channel) select: [ :mes | DateAndTime now - mes timestamp < 1 hour ].
	lastMessages
		ifEmpty: [ self welcomePrivateResponseIn: channel.
			self logPrivateResponseTo: aDSMessage author keyword: 'WELCOME'.
			^ self ].
	lastMessages size > 4
		ifTrue: [ lastMessages := lastMessages first: 4 ].
	lastMessages
		detect: [ :mes | mes author id = self me id ]
		ifNone: [ self annoyedPrivateResponseIn: channel.
			self logPrivateResponseTo: aDSMessage author keyword: 'ANNOYED' ]