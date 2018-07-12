*TinyZ
editGuildUserNicknameTo: nicknameString
	| dictionary |
	dictionary := NeoJSONObject new
		at: 'nick' put: nicknameString;
		yourself.
	^ DSModelJsonMapping write: dictionary mappedTo: #editGuildMemberNicknameMappingFor: