initialization
initialize
	super initialize.
	self buildParsers.
	self initializeCommandsDictionaries.
	harassmentReactionsUrls := 'harassmentUrls.txt' asFileReference contents substrings: String cr