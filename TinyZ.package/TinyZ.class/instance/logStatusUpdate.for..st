logging
logStatusUpdate: status for: user
	| updateMessage |
	updateMessage := '[' , DateAndTime now printString , '] ' , user username , ' est maintenant ' , status.
	Transcript crShow: updateMessage