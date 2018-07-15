messages building
buildPictureMessageFromPath: aPicturePath
	| message |
	message := self message.
	message embedImageForm: (ImageReadWriter formFromFileNamed: aPicturePath).
	^ message