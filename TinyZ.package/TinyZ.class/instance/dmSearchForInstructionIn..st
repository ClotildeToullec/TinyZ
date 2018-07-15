message reception
dmSearchForInstructionIn: message
	| channel commands |
	channel := self getChannelOfMessage: message.
	commands := privateParser parse: message content asLowercase onlyLetters.
	commands ifEmpty: [ self noCommandPrivateResponseTo: message ].
	commands
		do: [ :keyword | 
			self perform: (privateKeywords at: keyword) with: channel.
			self logPrivateResponseTo: message author keyword: keyword asUppercase ]