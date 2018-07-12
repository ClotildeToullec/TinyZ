messaging - private
picturePrivateMessage: aPictureUrl to: aUser
	^ self sendInPrivate: (self pictureMessageFromPictureUrl: aPictureUrl) to: aUser