messaging - public - pictures
buildPictureMessageFromForm: aPicturePath
	| message |
	message := self message.
	message embedImageForm: aPicturePath.
	^ message