messaging - public - pictures
pictureFromPath: aPicturePath inChannel: aChannel
	^ self sendMessage: (self buildPictureMessageFromPath: aPicturePath) toChannel: aChannel