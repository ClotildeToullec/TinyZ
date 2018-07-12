private
meAsGuildUser
	^ self restApi meGuilds first members detect: [ :mem | mem user id = self me id ]