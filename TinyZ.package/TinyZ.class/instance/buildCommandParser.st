initialization
buildCommandParser
	"commandParser parses strings that entireMessageParser returned as commandAndOption looking for a known keyword. If it finds one, returns and OrderedCollection of the keyword and the following string, a potential option."

	| smallParsers |
	smallParsers := publicKeywords keys collect: [ :key | key asPParser ].
	commandParser := smallParsers first.
	2 to: smallParsers size do: [ :i | commandParser := commandParser / (smallParsers at: i) ].
	commandParser := commandParser sea
		==> [ :array | 
			| key option stream |
			key := array second.
			option := array third.
			stream := WriteStream with: ''.
			option do: [ :char | stream nextPut: char ].
			option := stream contents.
			{key.
			option} ].
	commandParser := commandParser optimize