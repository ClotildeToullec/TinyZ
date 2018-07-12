messaging - public - pictures
pictureFromUrl: aPictureUrl inChannel: aChannel
	^ self sendMessage: (self buildPictureMessageFromUrl: aPictureUrl) toChannel: aChannel