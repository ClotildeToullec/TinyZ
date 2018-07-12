annoucements reception
publicMessagePosted: message
	| user timestamp text channel |
	user := message author.
	timestamp := message timestamp.
	text := message content.
	channel := self servers first channelSatisfying: [ :c | c id = message channelId ].
	Transcript crShow: '[' , timestamp printString , '] (' , channel name , ') ' , user username , ': ' , text.
	self checkMessageForZCommand: message inChannel: channel