I am a Discord bot.

I supervise a Discord guild. I log every message and status update.
I recognize keywords that are sent to me in messages.
	I act when these keywords are sent in public messages (see 'command' protocol).
	I sent a message explaining how to use a keyword when it is sent to me in a private channel.
I have other functions interacting with the guid members, reponding to their messages or status update.

To add a keyword, its functions and user guide, see initializeCommandsDictionaries.

I have only one instance that is connected to Discord. Accessible through the class method 'connectedOne'.