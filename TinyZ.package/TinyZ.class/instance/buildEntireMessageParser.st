initialization
buildEntireMessageParser
	"entireMessageParser reads every message looking for a Z instruction. It returns a collection of uninterpreted potential instructions, empty if there is no instruction in the message."

	| prefix commandAndOption parameter |
	prefix := $z asPParser caseInsensitive trim ==> #asLowercase.
	commandAndOption := #word asPParser trim starLazy flatten ==> #onlyLetters ==> #asLowercase.
	parameter := (#digit asPParser plus token ==> [ :token | token value asNumber ]) optional.
	entireMessageParser := ((prefix , commandAndOption , parameter) sea ==> #second) star.
	entireMessageParser := entireMessageParser optimize