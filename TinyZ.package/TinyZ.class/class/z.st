life and death
z
	<script>
	^ z
		ifNil: [ z := self new
				token: self tokenFilename asFileReference contents;
				connect;
				initializeSubscriptions;
				yourself ]