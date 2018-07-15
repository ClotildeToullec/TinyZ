sending pictures - public
pictureFromPath: aPicturePath inChannelNamed: aChannel
	^ self message: (self buildPictureMessageFromPath: aPicturePath) toServer: 'LucasFilms' channelNamed: aChannel