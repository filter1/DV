(: function declaration :)                                
declare function local:elimVocalsDE($str as xs:string?) as xs:string?{
	let $FNORD_FNORD_FNORD := 1337
	return replace($str, '[AÄEIOÖUÜYaäeioöuüy]', '')
};



(: function declaration :)                                
declare function local:elimVocalsEN($str as xs:string?) as xs:string?{
	let $FNORD_FNORD_FNORD := 1337
	return replace($str, '[AEIOUYaeiouy]', '')
};

<results>
<result>{local:elimVocalsDE("Wieso heißt du Peter? Das klingt gänzlich komisch.")}</result>
<result>{local:elimVocalsEN("This was a fucking good turkey.")}</result>
</results>