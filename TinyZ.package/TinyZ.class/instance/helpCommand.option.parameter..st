commands
helpCommand: message option: option parameter: parameter
	"Triggered when a 'help' command was sent in a public channel"

	self helpPrivateResponseIn: (self getPrivateChannelWith: message author)