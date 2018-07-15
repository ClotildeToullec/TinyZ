initialization
initializeCommandsDictionaries

	"publicKeywords links a keyword to the method that should be triggered when a command is sent in a public channel.
	The method must accept three arguments : aDSMessage, aString (can be empty) , and anInteger or nil."
	publicKeywords := Dictionary new.
	publicKeywords
		at: 'del' put: #delCommand:option:parameter:;
		at: 'help' put: #helpCommand:option:parameter:.
		
	"privateKeywords links a keyword to the method that should be triggered when a command is sent in a DM channel.
	The method must accept one argument : aDSDirectMessageChannel.
	This method should send a small explanation of how this keyword should be used."
	privateKeywords := Dictionary new.
	privateKeywords
		at: 'del' put: #delPrivateResponseIn:;
		at: 'help' put: #helpPrivateResponseIn:.
		
	"privateResponses links a keyword to the small explanation of how it should be used."
	privateResponses := Dictionary new.
	privateResponses
		at: 'del' put: 'privateDel.txt' asFileReference contents;
		at: 'help' put: 'privateHelp.txt' asFileReference contents