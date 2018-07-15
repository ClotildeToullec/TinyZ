dm responses
delPrivateResponseIn: channel
	| stream |
	stream := WriteStream with: (privateResponses at: 'del').
	self textMessage: stream contents inChannel: channel