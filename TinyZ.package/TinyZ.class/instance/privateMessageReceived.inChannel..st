annoucements reception
privateMessageReceived: message inChannel: channel
	| user timestamp text |
	user := message author.
	timestamp := message timestamp.
	text := message content.
	Transcript crShow: '[' , timestamp printString , '] Private message from ' , user username , ': ' , text.
	self checkPrivateMessageForZCommand: message inChannel: channel