private
getUserOfId: anId
	| response |
	response := self restApi newZnClientAuthenticated
		url: 'https://discordapp.com/api/v6/users/' , anId;
		get;
		response.
	^ response isSuccess
		ifTrue: [ | user |
			user := DSModelJsonMapping
				read: DSUser
				withMapping: #userMappingFor:
				on: response contents readStream.
			user restApi: self.
			^ user ]
		ifFalse: [ nil ]