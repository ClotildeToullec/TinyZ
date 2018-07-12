messaging - public - pictures
pictureFromForm: aForm inChannelNamed: aChannel
	^ self sendMessage: (self buildPictureMessageFromForm: aForm) toServer: 'LucasFilms' channelNamed: aChannel