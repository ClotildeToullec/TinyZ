annoucements reception
newMessagePosted: ann
	| message channel |
	message := ann payload eventData.
	channel := self servers first channelSatisfying: [ :c | c id = message channelId ].
	channel ifNotNil: [ self publicMessagePosted: message ].
	message author id = self me id
		ifTrue: [ Transcript crShow: '[' , message timestamp printString , '] Private message response.' , message content.
			^ self ].
	channel
		ifNil: [ channel := self directChannels
				detect: [ :chan | chan id = message channelId ]
				ifNone: [ restApi directMessageWith: message author ].
			self privateMessageReceived: message inChannel: channel ]