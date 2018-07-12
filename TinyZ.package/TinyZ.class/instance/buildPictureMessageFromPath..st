messaging - public - pictures
buildPictureMessageFromPath: aPicturePath
	| message |
	message := self message.
	message embedImageUrl: 'attachment:/' , aPicturePath.
	^ message