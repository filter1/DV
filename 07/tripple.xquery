declare function local:trip($u as xs:integer, $v as
xs:integer) as xs:integer {
        let $u2 := $u * $u
        let $v2 := $v * $v
        let $x := $u2 - $v2
        let $y := 2 * $u * $v
        let $z := $u2 + $v2
        return ($x, $y, $z)
};

<pythagTriples>
        {for $x in (1 to doc("tripel.xml")/pythago/limit)
                let $tripel := local:trip($x + 1, $x)
                return <pTriple>
                        <x>{$tripel[1]}</x>
                        <y>{$tripel[2]}</y>
                        <z>{$tripel[3]}</z>
                </pTriple>
        }
</pythagTriples>