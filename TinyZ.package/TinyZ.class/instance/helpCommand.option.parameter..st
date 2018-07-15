commands
helpCommand: message option: option parameter: parameter
	self helpPrivateResponseIn: (self getPrivateChannelWith: message author)