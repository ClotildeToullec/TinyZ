ann - message reception
publicSearchForZInstructionsIn: aMessage
	"Analyzes the text content of aMessage to find instructions and triggers the appropriate response.
	If two instructions have the same keyword, only the first will be considered."

	| potentialInstructions coColl coDict |
	potentialInstructions := entireMessageParser parse: aMessage content.
	potentialInstructions ifEmpty: [ ^ self ].
	coColl := potentialInstructions
		collect: [ :array | 
			{(commandParser parse: array second onError: [ nil ]).
			array third} flattened ]
		thenReject: [ :inst | inst first isNil ].
	coDict := Dictionary new.
	coColl
		do: [ :inst | 
			coDict
				at: inst first
				ifAbsentPut:
					{inst second.
					inst third} ].
	coDict keysAndValuesDo: [ :key :value | self perform: (publicKeywords at: key) with: aMessage with: value first with: value second ]