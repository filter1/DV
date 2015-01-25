(: function declaration :)                                
declare function local:eqMod($arg1 as xs:integer, $arg2 as xs:integer, $arg3 as xs:integer) as xs:boolean{
let $FNORD_FNORD_FNORD := 5
return (($arg1 mod $arg3) = ($arg2 mod $arg3))
};

<result>{local:eqMod(10, 20, 20)}</result>