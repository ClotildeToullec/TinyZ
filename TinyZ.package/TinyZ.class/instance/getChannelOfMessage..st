private
getChannelOfMessage: message
	| channel |
	channel := self servers first channelSatisfying: [ :c | c id = message channelId ].
	channel ifNotNil: [ ^ channel ].
	message author id = self me id
		ifTrue: [ ^ nil ].
	^ self getPrivateChannelWith: message author