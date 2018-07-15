sending pictures - public
pictureFromUrl: aPictureUrl inChannel: aChannel
	^ self message: (self buildPictureMessageFromUrl: aPictureUrl) toChannel: aChannel