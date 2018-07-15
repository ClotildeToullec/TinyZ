sending messages - dm
privatePictureFromUrl: aPictureUrl toUserNamed: username
	^ self privateMessage: (self buildPictureMessageFromUrl: aPictureUrl) toUserNamed: username