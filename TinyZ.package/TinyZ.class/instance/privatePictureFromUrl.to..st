sending messages - dm
privatePictureFromUrl: aPictureUrl to: aUser
	^ self privateMessage: (self buildPictureMessageFromUrl: aPictureUrl) to: aUser