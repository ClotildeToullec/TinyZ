life and death
killZ
	<script>
	TinyZ allInstancesDo: [ :aZ | aZ disconnect ].
	z := nil.
	Smalltalk garbageCollect