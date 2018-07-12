messaging - public - pictures
buildPictureMessageFromUrl: aPictureUrl
	| message |
	message := self message.
	message embed imageUrl: aPictureUrl.
	^ message