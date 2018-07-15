dm responses
helpPrivateResponseIn: channel
	| stream |
	stream := WriteStream with: (privateResponses at: 'help').
	self textMessage: stream contents inChannel: channel