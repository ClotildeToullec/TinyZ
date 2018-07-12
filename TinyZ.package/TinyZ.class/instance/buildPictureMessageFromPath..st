messaging - public - pictures
buildPictureMessageFromPath: aPicturePath
	| message |
	message := self message.
	message embedImageForm: (ImageReadWriter formFromFileNamed: aPicturePath).
	^ message