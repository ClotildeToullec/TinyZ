messages building
buildPictureMessageFromForm: aForm
	| message |
	message := self message.
	message embedImageForm: aForm.
	^ message