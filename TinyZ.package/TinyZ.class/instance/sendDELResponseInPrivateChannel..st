commands - privateMessages
sendDELResponseInPrivateChannel: aDSDirectMessageChannel
	| stream |
	stream := WriteStream with: ''.
	stream
		nextPutAll: '__Effacer des messages : ''**Z del** ±**option** ±**paramètre**''__';
		cr;
		cr;
		nextPutAll: 'Pour effacer un seul message, tu n''as pas besoin d''option.';
		cr;
		nextPutAll: '	Tu peux spécifier quel message tu veux effacer grâce au paramètre.';
		cr;
		nextPutAll: 'Si tu veux effacer plusieurs messages, donne-moi l''option ''**all**''.';
		cr;
		nextPutAll: '	Le paramètre désigne alors le nombre de messages qui seront effacés';
		cr;
		nextPutAll: '*Dans la fonction* **del**, *le paramètre ne peut être > 10.';
		cr;
		nextPutAll: 'Si tu ne me donnes pas de paramètre ou que tu me donnes 0, je considèrerai que le paramètre est 1 et j''effacerai ton précédent message.*'.
	self textMessage: stream contents inChannel: aDSDirectMessageChannel