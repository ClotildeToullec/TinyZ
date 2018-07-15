sending messages - dm
privateMessage: message toUserNamed: username
	| user channel |
	user := (self servers first members collect: [ :member | member user ]) detect: [ :us | us username = username ].
	channel := restApi directMessageWith: user.
	self message: message toChannel: channel