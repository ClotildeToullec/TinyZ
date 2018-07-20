ann - message reception
dmReceived: message
	self logPrivateMessage: message.
	self dmSearchForInstructionIn: message