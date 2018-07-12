messaging - private
picturePrivateMessage: aPictureUrl toUserNamed: username
	^ self sendInPrivate: (self pictureMessageFromPictureUrl: aPictureUrl) toUserNamed: username