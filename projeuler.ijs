NB.1
+/(((0=3&|)+.(0=5&|)) # ] )i.1000 
NB.3
>./~.@q: 600851475143             
NB.4
palin=:(*./&(|. = ])&":)
>./~.(palin"0 # ]),(] */ ]) i. 1000
NB.5
*./1+i.20
NB.6
((^&2)&(+/)-(+/)&(^&2))i.1+100
NB.7
p: _1+1001
NB.10
+/p: i.(p:^:_1) 2e6
NB.12
((+/"1)&(0&<)&q:) (+/&(1+i.))"0 (1+i. 7)

sq =: (+/&(1+i.))"0
sq =: 2%~(1&+*])
divs=:((+/)@(0&=)@((1+i.)|]))"0
divs=:((*/)@(1&+)@((0&<)#])@(_&q:))
test=: ((500&<)& divs & sq)
   ($:&(1&+))`sq@. test 1
NB.14
cltz  =: (%&2)` ((1&+)&(3&*)) @. (2&|)
chain =: (],$:&cltz)`]@.(1&=)
len   =: (#&chain)"0
lenc =: ((1+$:&cltz)`1:@.(1&=))"0
lencm =: lenc M.
lut =: lenc 1+i.1e3
lenp =: ((1+$:&cltz)`(({&lut)&(-&1))@.(1001&>))"0
lut2 =: lenp 1+i.1e4
lenp2 =: ((1+$:&cltz)`(({&lut2)&(-&1))@.(10001&>))"0
lut3 =: lenp2 1+i.1e5
lenp3 =: ((1+$:&cltz)`(({&lut3)&(-&1))@.(100001&>))"0
lut4 =: lenp3 1+i.3e5
lenp4 =: ((1+$:&cltz)`(({&lut4)&(-&1))@.(300001&>))"0
lut5 =: lenp4 1+i.6e5
lenp5 =: ((1+$:&cltz)`(({&lut5)&(-&1))@.(600001&>))"0
lut6 =: lenp5 1+i.8e5
lenp6 =: ((1+$:&cltz)`(({&lut6)&(-&1))@.(800001&>))"0
1+ (]i.(>./)) lenp6 1+i.1e6
NB.15
M  =: adverb def '+/@((u"0)@(1&+)@i.)'
Mm =: adverb def '+/@((u"0)@(1&+)@i.) M.'
1: Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm Mm 1+20
1.37847e11
   
   m =: adverb def 'u Mm Mm Mm Mm Mm'
   
   1: m m m m 1+20
1.37847e11
   
   ": 1: m m m m 1+20
1.37847e11
   
   12": 1: m m m m 1+20
137846528820
  
NB.16
+/"."0 (>.&(10&^.) ": ]) 2^1000
NB.17
r09 =: 'one two three four five six seven eight nine'
   ;:r09
┌───┬───┬─────┬────┬────┬───┬─────┬─────┬────┐
│one│two│three│four│five│six│seven│eight│nine│
└───┴───┴─────┴────┴────┴───┴─────┴─────┴────┘

   l19 =: #&> ;:r09
   
   (i.5) { ;:r09
┌───┬───┬─────┬────┬────┐
│one│two│three│four│five│
└───┴───┴─────┴────┴────┘
   
   +/(i.5) { l19
19
   
   r2090 =: 'twenty thirty fourty fifty sixty seventy eighty ninety'
   
   l2090 =: #&> ;:r2090
   (10*+/l2090)+(8*+/l19)
758
   r1019 =: 'ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen'
   
   l1019 =: #&> ;:r1019
   
   (+/l19)+(+/l1019)+(10*+/l2090)+(8*+/l19)
864
   ha =: 'hundred and'
   
   h =: 'hundred'
   
   lha =: #&> ;:ha
   
   lh =: #&> ;:h
   a =: 'and'
   
   la =: #&> ;:a
   
   c =: (+/l19)+(+/l1019)+(10*+/l2090)+(8*+/l19)
   c+(100*+/l19)+(100*9*lh)+(9*99*la)+(10*c)+( +/ #&> ;: 'one thousand')
22088
NB.23
isperf=:+/&((0&=)&(i. | ]) # i.) = ]
isabun=:((+/&((0&=)&(i. | ]) # i.) > ]) M.)"0
isdecomp =: ((+./)&(isabun&i. *. isabun&(]-i.)))"0
isdecomp =: ((+./)&(isabun&i.&<.&(2&%~) *. isabun&(]-i.&<.&(2&%~))))"0
isdecomp2 =: ((+./)&((|. *. ])&isabun&i.&(1&+)))"0
abuns=: isabun i.1+28123
isdecomp3 =: ((+./)&((|. *. ])&({.&abuns)&(1&+)))"0
+/ (-.&isdecomp # ]) i.500
NB.24

   1e6-1++/(0 1 1 2 1 5 2 6 6 2)*!i.10
0
   fac =: |.!i.10
   res =: ((1e6-1)&-)&(+/)&(({.&fac)&# * ])
   r =: (],<.@((res@])%[))
   r/ (!i.9), (!9) r (0$0)
2 6 6 2 5 1 2 1 1 0
   
2783915460
