life and death
z
	<script>
	^ z
		ifNil: [ z := self new
				token: self tokenFilename asFileReference contents trim; 
				connect;
				initializeSubscriptions;
				yourself ]