logging
logPrivateMessage: message
	| user timestamp text |
	user := message author.
	timestamp := message timestamp.
	text := message content.
	Transcript crShow: '[' , timestamp printString , '] Private message from ' , user username , ': ' , text