messaging - public - pictures
pictureFromForm: aForm inChannel: aChannel
	^ self sendMessage: (self buildPictureMessageFromPath: aForm) toChannel: aChannel