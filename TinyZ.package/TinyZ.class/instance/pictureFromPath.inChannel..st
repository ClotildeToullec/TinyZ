sending pictures - public
pictureFromPath: aPicturePath inChannel: aChannel
	^ self message: (self buildPictureMessageFromPath: aPicturePath) toChannel: aChannel