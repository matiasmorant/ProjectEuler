isPrime: {$[x=2;1; ~|/~{(2_!1+%x)!'x}x]}
nextPrime: {{~isPrime x}{x+1}/x}
primes: {(x-1)nextPrime\2}
primesLt: {[n] -1_({x<n}nextPrime\2)}
multiplicity: {[p;n]{x-2}(#{x=_x}{x%p}\n)}
factorize: {{x@(&~|&\|~x)} (primesLt 1+x) multiplicity\: x}
padr: {z,1_(y-#z){x}\x}
makeSqr: {(0{x|#y}/x) padr[0]/: x }
pow: {[a;n] n{a*x}/1}

P1: {+/&|/~x!\:!y} [3 5; 1000]
P4: *-1# {&/{x=|x}($x)} # ?*/{!x,x}100
P5: {*/((primes (#x)) pow' x)} (|/ makeSqr (factorize' (2_!21)))
