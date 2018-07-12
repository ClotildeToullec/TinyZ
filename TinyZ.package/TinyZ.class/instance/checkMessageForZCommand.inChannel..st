commands - parsing
checkMessageForZCommand: message inChannel: channel
	self parseMessage: message forZCommandInChannel: channel.
	(message content includesSubstring: '**')
		ifTrue: [ self showWikipediaPageAskedIn: message inChannel: channel ]