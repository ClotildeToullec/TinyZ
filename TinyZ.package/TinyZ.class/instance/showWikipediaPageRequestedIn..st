commands
showWikipediaPageRequestedIn: message
	(message content findBetweenSubstrings: '**')
		do: [ :el | 
			el isAllSeparators
				ifFalse: [ | response url |
					url := WriteStream with: 'https://fr.wikipedia.org/wiki/'.
					url nextPutAll: (el withSeparatorsCompacted copyReplaceAll: ' ' with: '_') urlEncoded.
					response := ZnClient new
						url: url contents;
						get;
						response.
					response isSuccess
						ifTrue: [ self textMessage: url contents urlDecoded inChannel: (self getChannelOfMessage: message) ] ] ]