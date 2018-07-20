*TinyZ
deleteMessage: aDSMessage fromChannelId: channelId
	| response url |
	url := self channelMessageUrlForId: aDSMessage id andChannelId: channelId.
	response := self newZnClientAuthenticated
		url: url;
		entity: (ZnEntity text: 'channels/' , channelId , '/messages/' , aDSMessage id);
		contentType: ZnMimeType applicationJson;
		delete;
		response.
	^ response isSuccess
		ifTrue: [ self parseMessage: response ]
		ifFalse: [ DSUnauthorizedOperationError new
				response: response;
				signal: response contents ]