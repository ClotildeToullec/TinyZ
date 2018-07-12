name changes
changeUserNickname: aDSUser to: nicknameString
	self restApi changeNickNameForUser: aDSUser InGuildId: self servers first id to: nicknameString.