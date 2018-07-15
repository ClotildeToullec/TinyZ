sending pictures - public
pictureFromUrl: aPictureUrl inChannelNamed: aChannel
	^ self message: (self buildPictureMessageFromUrl: aPictureUrl) toServer: 'LucasFilms' channelNamed: aChannel