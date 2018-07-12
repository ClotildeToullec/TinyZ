commands - parsing
parseZCommandMessage: message
	| prefix command option number parser |
	prefix := $z asPParser caseInsensitive trim.
	command := nil.
	self keywords
		do: [ :key | 
			command := command isPetit2Parser
				ifFalse: [ key asPParser caseInsensitive trim ]
				ifTrue: [ command / key asPParser caseInsensitive trim ] ].
	option := #letter asPParser plus trim flatten.
	number := #digit asPParser plus token trim
		==> [ :token | token value asNumber ].
	parser := prefix , command , option optional , number optional.
	^ parser parse: message content onError: [ #(nil nil nil nil) ]