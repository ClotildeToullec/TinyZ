sending pictures - public
pictureFromForm: aForm inChannel: aChannel
	^ self message: (self buildPictureMessageFromPath: aForm) toChannel: aChannel