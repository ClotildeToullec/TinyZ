messaging - public
pictureMessage: aPictureUrl inChannel: aChannel
	^ self sendMessage: (self pictureMessageFromPictureUrl: aPictureUrl) toChannel: aChannel