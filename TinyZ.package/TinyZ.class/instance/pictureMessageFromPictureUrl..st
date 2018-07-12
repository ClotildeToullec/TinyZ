message building
pictureMessageFromPictureUrl: aPictureUrl
	| message |
	message := self message.
	message embed imageUrl: aPictureUrl.
	^ message