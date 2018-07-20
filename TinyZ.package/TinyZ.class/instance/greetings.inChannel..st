greetings
greetings: message inChannel: channel
	| parser greeting |
	channel name = 'general'
		ifFalse: [ ^ self ].
	parser := greetings first asPParser caseInsensitive.
	2 to: greetings size do: [ :g | parser := parser / (greetings at: g) asPParser caseInsensitive ].
	greeting := parser parse: message content onError: [ ^ self ].
	lastHello := Date today.
	self textMessageInGeneral: greeting