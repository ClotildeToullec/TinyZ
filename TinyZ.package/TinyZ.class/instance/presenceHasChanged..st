annoucements reception
presenceHasChanged: ann
	| user username status updateMessage |
	user := self getUserOfId: ann payload eventData user id.
	user ifNil: [ ^ self ].
	username := user username.
	status := ann payload eventData status statusString.
	updateMessage := username , ' est maintenant ' , status.
	Transcript crShow: updateMessage
	"self textMessage: updateMessage inChannelNamed: 'general'"