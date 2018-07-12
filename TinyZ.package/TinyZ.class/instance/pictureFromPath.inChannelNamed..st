messaging - public - pictures
pictureFromPath: aPicturePath inChannelNamed: aChannel
	^ self sendMessage: (self buildPictureMessageFromPath: aPicturePath) toServer: 'LucasFilms' channelNamed: aChannel