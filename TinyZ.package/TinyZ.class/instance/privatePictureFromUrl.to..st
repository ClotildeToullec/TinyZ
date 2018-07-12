messaging - private
privatePictureFromUrl: aPictureUrl to: aUser
	^ self privateMessage: (self buildPictureMessageFromUrl: aPictureUrl) to: aUser