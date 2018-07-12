baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: 
		[
		spec baseline: 'PetitParser2Core' with:[spec repository: 'github://kursjan/petitparser2'].
		 spec baseline: 'DiscordSt' with: [ spec repository: 'github://JurajKubelka/DiscordSt/src' ].
			
			spec blessing: #baseline.
			spec repository: 'github://ColtildeToullec/TinyZ'.
			spec description: 'TinyZ is a Discord bot written in Pharo.'.
			spec package: 'TinyZ' ]