logging
logPublicMessage: message inChannel: channel
	| user timestamp text |
	user := message author.
	timestamp := message timestamp.
	text := message content.
	Transcript crShow: '[' , timestamp printString , '] (' , channel name , ') ' , user username , ': ' , text