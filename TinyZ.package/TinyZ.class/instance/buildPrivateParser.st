initialization
buildPrivateParser
	"pivateParser parses messages received in private channels, looking for a keyword. Returns a collection of found keywords.
	Should parse messages asLowercase."

	| smallParsers |
	smallParsers := privateKeywords keys collect: [ :key | key asPParser islandInSea ].
	privateParser := smallParsers first.
	2 to: smallParsers size do: [ :i | privateParser := privateParser / (smallParsers at: i) ].
	privateParser := privateParser star.
	privateParser := privateParser optimize