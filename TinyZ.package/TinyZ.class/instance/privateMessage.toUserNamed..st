messaging - private
privateMessage: message toUserNamed: username
	| user channel |
	user := (self servers first members collect: [ :member | member user ]) detect: [ :us | us username = username ].
	channel := restApi directMessageWith: user.
	self sendMessage: message toChannel: channel