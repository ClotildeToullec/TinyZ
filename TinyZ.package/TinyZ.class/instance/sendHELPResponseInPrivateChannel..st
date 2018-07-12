commands - privateMessages
sendHELPResponseInPrivateChannel: aDSDirectMessageChannel
	| stream |
	stream := WriteStream with: 'Oh, tu as besoin de moi ! Voilà comment je peux t''aider.'.
	stream
		cr;
		cr;
		cr;
		nextPutAll: '        __**Instructions**__';
		cr;
		cr;
		nextPutAll: '        Dans les salons, je réponds aux instructions de la forme :';
		cr;
		cr;
		nextPutAll: '            ''**Z mot-clé** ±**option** ±**paramètre**''';
		cr;
		cr;
		nextPutAll: '        - Le préfixe **Z** m''indique que c''est à moi que tu parles.';
		cr;
		nextPutAll: '        - Le **mot-clé** me dit ce que tu attends de moi.';
		cr;
		nextPutAll: '        - L''**option** est un deuxième mot-clé qui précise le premier.';
		cr;
		nextPutAll: '        - Le **paramètre** est un nombre entier.';
		cr;
		nextPutAll: '        *L''option et le paramètre ne sont pas toujours indispensables.*';
		cr;
		nextPutAll: '        *Après avoir exécuté une instruction, je l''efface pour ne pas polluer la conversation.*';
		cr;
		cr;
		nextPutAll: '        Les fonctions disponibles sont :';
		cr;
		nextPutAll: '        	- Pour effacer des messages : **del**.';
		cr;
		nextPutAll: '	        - Pour l''instant c''est tout.';
		cr;
		nextPutAll: '        Pour plus de détails sur les instructions, envoie-moi leur mot-clé';
		cr;
		cr;
		cr;
		nextPutAll: '        __**Liens wikipédia**__';
		cr;
		cr;
		nextPutAll: '        Je peux envoyer le lien wikipédia du sujet dont tu parles.';
		cr;
		nextPutAll: '        Il suffit pour cela que tu mettes en gras le nom du sujet en question (\**Sujet**) dans un message. Tu peux me demander plusieurs liens wikipédia dans un seul message.';
		cr;
		cr;
		cr;
		nextPutAll:
			'Je précise que je ne suis pas sensible à la casse et que je me fiche des espaces entre les parties de l''instruction. Pour moi zdelall5 vaut tout aussi bien que ''Z del ALL5'', mais je ne comprends pas ''Zde lall5'' ';
			cr;
			cr;
		nextPutAll: 'Bisous.'.
	self textMessage: stream contents inChannel: aDSDirectMessageChannel