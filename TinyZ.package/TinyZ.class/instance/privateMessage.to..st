sending messages - dm
privateMessage: message to: user
	| channel |
	channel := restApi directMessageWith: user.
	self message: message toChannel: channel