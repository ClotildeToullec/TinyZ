messaging - public
pictureMessage: aPictureUrl inChannelNamed: aChannel
	^ self sendMessage: (self pictureMessageFromPictureUrl: aPictureUrl) toServer: 'LucasFilms' channelNamed: aChannel