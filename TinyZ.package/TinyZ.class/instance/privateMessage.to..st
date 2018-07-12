messaging - private
privateMessage: message to: user
	| channel |
	channel := restApi directMessageWith: user.
	self sendMessage: message toChannel: channel