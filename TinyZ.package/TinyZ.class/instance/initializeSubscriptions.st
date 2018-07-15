private
initializeSubscriptions
	self announcer
		when: DSGatewayPresenceUpdateAnnouncement
		do: [ :ann | self statusHasChanged: ann ].
	self announcer
		when: DSGatewayMessageCreateAnnouncement
		do: [ :ann | self newMessagePosted: ann ]