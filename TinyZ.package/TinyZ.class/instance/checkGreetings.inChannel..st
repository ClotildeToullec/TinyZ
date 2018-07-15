experimental
checkGreetings: message inChannel: channel
	| parser greeting |
	channel name = 'general'
		ifFalse: [ ^ self ].
	parser := greetings first asPParser caseInsensitive.
	2 to: greetings size do: [ :g | parser := parser / g asPParser caseInsensitive ].
	greeting := parser parse: message contents onError: [ ^ self ].
	self textMessageInGeneral: greeting.
	lastHello := Date today