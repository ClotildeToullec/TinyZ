ann- status update
statusHasChanged: ann
	| user status |
	user := self getUserOfId: ann payload eventData user id.
	user ifNil: [ ^ self ].
	status := ann payload eventData status statusString.
	status = 'offline'
		ifTrue: [ user lastDeconnexionTimestamp: DateAndTime now ].
	(status = 'online' and: [ user lastDeconnexionTimestamp isNotNil ])
		ifTrue: [ DateAndTime now - user lastDeconnexionTimestamp > 2 weeks
				ifTrue: [ self welcomeBackTo: user ] ].
	self logStatusUpdate: status for: user