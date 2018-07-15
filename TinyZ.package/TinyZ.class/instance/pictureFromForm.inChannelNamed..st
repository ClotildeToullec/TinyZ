sending pictures - public
pictureFromForm: aForm inChannelNamed: aChannel
	^ self message: (self buildPictureMessageFromForm: aForm) toServer: 'LucasFilms' channelNamed: aChannel