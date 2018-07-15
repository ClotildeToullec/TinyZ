initialization
initialize
	super initialize.
	self initializeCommandsDictionaries.
	self buildParsers.
	harassmentReactionsUrls := 'harassmentUrls.txt' asFileReference contents substrings: String cr.
	greetings := #('bonjour' 'salut' 'yo' 'hello')