isPrime: {$[x=2;1; ~|/~{(2_!1+%x)!'x}x]}
nextPrime: {{~isPrime x}{x+1}/x}
primes: {(x-1)nextPrime\2}
primesLt: {[n] -1_({x<n}nextPrime\2)}
multiplicity: {[p;n]{x-2}(#{x=_x}{x%p}\n)}

P1: {+/&|/~x!\:!y} [3 5; 1000]
P4: *-1# {&/{x=|x}($x)} # ?*/{!x,x}1000
