messaging - public - pictures
pictureFromUrl: aPictureUrl inChannelNamed: aChannel
	^ self sendMessage: (self buildPictureMessageFromUrl: aPictureUrl) toServer: 'LucasFilms' channelNamed: aChannel