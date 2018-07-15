message reception
publicMessagePosted: message inChannel: channel
	self logPublicMessage: message inChannel: channel.
	(message content includesSubstring: '**')
		ifTrue: [ self showWikipediaPageRequestedIn: message ].
	self publicSearchForZInstructionsIn: message