*TinyZ
changeNickNameForUser: aDSUser InGuildId: guildId to: nicknameString
	| response url entity |
	entity := ZnEntity text: (self editGuildUserNicknameTo: nicknameString).
	entity contentType: ZnMimeType applicationJson.
	url := self guildMembersUrlForId: guildId.
	url addPathSegment: aDSUser id asString.
	response := self newZnClientAuthenticated
		url: url;
		entity: entity;
		patch;
		response.
	^ response isSuccess
		ifTrue: [  ]
		ifFalse: [ DSUnauthorizedOperationError new
				response: response;
				signal: response contents ]