% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

% \paper { indent = 0\cm}

\header {
  title = "Misatango"
  subtitle = "4 - Sanctus"
  composer = "Martín Palmeri"
  tagline = ""

}

conductor_size = 18
individual_size = 20

\include "utils/macros.ly"


armure = {
\accidentalStyle modern-cautionary
\compressEmptyMeasures
\tempo "Rubato" 4=84
\time 4/4
\key g \minor
}


sop_music = {
  \override TextSpanner.bound-details.left.text = "allarg."
R1*11 
\tempo "a tempo"
a'1\(^\f^"Solo" g2..\) r8
bes1\( a2..\) r8
c1\(^\cresc bes2..\) r8
r4 d--^\< c-- b-- d2 c
bes2.^\>^\startTextSpan 4 a1\!\stopTextSpan
\bar "||"\break \tempo 4=100
R1*8
\bar "||"\break
a1\(^\f^"tutti" g2..\) r8
bes1\( a2..\) r8
c1\(^\cresc bes2..\) r8
r4 d--^\< c-- b-- d2 c
bes2.^\> 4 a1 \breathe
a1^\mf g2 \breathe 8( a) a( bes)
bes1 a2\breathe 8( bes) 8( c) 1
bes1^\mp^\<
\override TextSpanner.bound-details.left.text = "rall."
r4\! d--^\f c-- b-- d2 c bes2. \startTextSpan
4 a1\fermata\stopTextSpan
\bar "||" \break
\tempo 4=128
R1*8 es'4.^\f d c4 bes4. a g4 d'4. c bes4
a8-.\([^\> bes-. a-.] g-.[ f-. g-.] a-. bes-.\) \breathe
c4.^\p^\< 4. 4 4. 4. 4 4. 4.-> 4 d4. 4. 4^"rit."
es2^\f d4 r
\bar "||" \break
\tempo "Più lento" 4=110
R1*3 r2 r4
bes^\mf^\cresc\( 4-- a\) r8 c4\( 8 4-- bes\) r
d\( 4-- c\) r8 es4\( 8 4-- d\) r8\!
bes4^>\startTextSpan c8 des2(-- c--)
bes1\fermata\stopTextSpan\fine
}	


sop_lyrics = \lyricmode {
  San -- ctus, __
  San -- ctus, __
  San -- ctus, __
  Do -- mi -- nus De -- us Sa -- ba -- oth.

  San -- ctus, __
  San -- ctus, __
  San -- ctus, __
  Do -- mi -- nus De -- us Sa -- ba -- oth.
  San -- ctus, 
  San -- ctus, 
  San -- ctus, 
  San -- ctus, 
  San -- ctus, __
  Do -- mi -- nus De -- us Sa -- ba -- oth.
  
  Ple -- ni sunt cae -- li et ter -- _ ra
  glo -- _ _ ri -- _ a tu -- a.
  Ple -- ni sunt cae -- li et ter -- _ ra
  glo -- ri -- a tu -- a.
  
  Ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis.
  In ex -- cel -- sis.

}




sop = \new Staff \with {instrumentName="Soprano"
  shortInstrumentName ="S."} <<
  \soprano_style
  \armure
  \relative c' {\sop_music}
  \addlyrics {\sop_lyrics}
>>


alt_music = {
  R1*21
  \tempo 4=100
  R1*8
  \bar "||"\break
  d1\(^\f d2..\) r8  
  es1\( 2..\) r8
  f1\( 2..\) r8
  r4 g--^\< g-- g-- fis2 2
  g^\> g g fis \breathe
  d8(^\mf es) 8( f) 8( es) 8( d~ 1)\breathe
  es8( f) 8( g) 8( f) 8( es~ 1)
  r8 d4-> es8 r f4-> g8
  f2^\mp^\< g4 a r\!
  g^\f-- g-- g-- fis2 2 g g fis1\fermata\bar "||" \break
  \tempo 4=128
  bes4.--^\mf a-- g4-- f4.-- es-- d4--
  es4.--( f--) g4--
  a8->[ g a] a->[( g) a]~4
  r1 d,8-.\([ c-. d-.] es-.[ d-. es-.] f-. es-.\)
  g4. a g4^\< f2. 4\!\breathe 
  
g4.^\f f es4 f4. 4. 4 g4. 4. 4
f8-.\([^\> g-. f-.] es-.[ d-. es-.] f-. g-.\) \breathe
es4.^\p^\< 4. 4 4. 4. 4 4. 4. 4 4. c'4. fis,4
g2^\f 4 r  
\bar "||" \break
\tempo "Più lento" 4=110
R1*4 r4 g^\mf^\cresc\( 4-- fis\)
r8 a4\( 8 4-- g\) r4 g\( ges-- f\)
r8 bes4 d,8 a'4--\! aes8 8
g2.( fis4) g1\fermata\fine
}	


alt_lyrics = \lyricmode {
  San -- ctus, __
  San -- ctus, __
  San -- ctus, __
  Do -- mi -- nus De -- us Sa -- ba -- oth. __ _
  San -- ctus, 
  San -- ctus, __
  San -- ctus, 
  San -- ctus, __
  San -- ctus, 
  San -- ctus, 
  San -- _ ctus, 
  Do -- mi -- nus De -- us Sa -- ba -- oth.
  
  Ple -- ni sunt cae -- li
  et ter -- ra glo -- ri -- a tu -- a. __
  Ple -- _ _ ni __ _ _ sunt __ _ cae -- li
  et ter -- ra.

  Ple -- ni sunt cae -- li et ter -- _ ra
  glo -- _ _ ri -- _ a tu -- a.
  Ple -- ni sunt cae -- li et ter -- _ ra
  glo -- ri -- a tu -- a.
  
  Ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis.
  Ex -- cel -- sis.


 }



alt = \new Staff \with {instrumentName="Alto"
  shortInstrumentName ="A."} <<
  \alto_style
  \armure
  \relative c' {\alt_music}
  \addlyrics {\alt_lyrics}
>>

ten_music = {
  R1*21
  \tempo 4=100
  R1*8
  \bar "||"\break
  bes'1\(^\f 2..\) r8  
  c1\( 2..\) r8
  d1\( 2..\) r8
  r4 es--^\< es-- es-- 2 2
  2^\> 2 2 d \breathe
  bes8(^\mf c) 8( d) 8( c) 8( bes~ 1)\breathe
  c8( d) 8( es) 8( d) 8( c~ 1)
  r8 bes4-> c8 r d4-> es8
  d2^\mp^\< es4 f r\!
  es^\f-- 4-- 4-- 2 2 2 2 d1\fermata\bar "||" \break
  \tempo 4=128
  r1 a8-.\([^\mf g-. a-.] bes-.[ a-. bes-.] a-. g-.\)
c4.-- d-- es4-- f4.--( d--) bes4--
R1*2 c8-.\([ d-. c-.] bes-.[ c-. bes-.] a-.^\< bes-.\)
c2. 4\!\breathe
g4.^\f a bes4 a4. bes4. c4 bes4. c4. d4
es8-.[^\> d-. c-.] d4.--  g,4-- \breathe
4.^\p^\< 4. 4 4. 4. 4 4. 4. 4 ges4. 4. c4
2^\f b4 r  
\bar "||" \break
\tempo "Più lento" 4=110
R1*3 r2 r4
d^\mf^\cresc\( 4-- cis\) r8 a4\( bes8 a4-- g\) r
f'\( 4-- es\) r8 a,4\( bes8 g'4-- f\) r8\!
d4^> es8 f2(-- es--)
d1\fermata\fine

}	


ten_lyrics = \lyricmode {
  San -- ctus, __
  San -- ctus, __
  San -- ctus, __
  Do -- mi -- nus De -- us Sa -- ba -- oth. __ _
  San -- ctus, 
  San -- ctus, __
  San -- ctus, 
  San -- ctus, __
  San -- ctus, 
  San -- ctus, 
  San -- _ ctus, 
  Do -- mi -- nus De -- us Sa -- ba -- oth.

  Ple -- _ _ ni __ _ _ sunt __ _ cae -- li
  et ter -- ra.
  Ple -- _ _ ni __ _ _ sunt __ _ cae -- li. 
  
  Ple -- ni sunt cae -- li et ter -- _ ra
  glo -- ri -- a tu -- a.
  Ple -- ni sunt cae -- li et ter -- _ ra
  glo -- ri -- a tu -- a.

  Ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis.
  In ex -- cel -- sis.

  }



ten = \new Staff \with {instrumentName="Tenor"
  shortInstrumentName ="T."} <<
  \alto_style
  \armure
  \relative c' {\ten_music}
  \addlyrics {\ten_lyrics}
>>


bass_music = {
  R1*21
  \tempo 4=100
  R1*8
  \bar "||"\break
  a1\(^\f g2..\) r8  
bes1\( a2..\) r8
c1\(^\cresc bes2..\) r8
r4 d--^\< c-- b-- d2 c
bes2.^\> 4 a1 \breathe
a1^\mf g2 \breathe 8( a) a( bes)
bes1 a2\breathe 8( bes) 8( c) 1
bes1^\mp^\<
r4\! d--^\f c-- b-- d2 c des2.
4 c1\fermata
\bar "||" \break
\tempo 4=128
R1*2 c,4.--^\mf bes-- a4-- g4.--( bes--) d4--
bes'4.--^\mf a-- g4-- f4.-- es-- d4--
es4.--( f--) g4--^\<
a8->[ g a] a->([ g) a]~4\!\breathe
c,4.^\f 4. 4 d4. 4. 4 es4. 4.-> 4
f8-.[^\> es-. d-.] es4.--  d4-- \breathe
c4.^\p^\< 4. 4 bes4. 4. 4 a4. 4. 4 aes4. 4. 4
g2^\f 4 r  
\bar "||" \break
\tempo "Più lento" 4=110
R1*4 r4 es'^\mf^\cresc\( 4-- d\)
r8 g,4\( a8 bes4-- b\) r4 c\( es-- f\)
r8 bes,4 8 4--\! 8 8
es4( bes' a d,) g1\fermata\fine

}	


bass_lyrics = \lyricmode {
  San -- ctus, __
  San -- ctus, __
  San -- ctus, __
  Do -- mi -- nus De -- us Sa -- ba -- oth.
  San -- ctus, 
  San -- ctus, 
  San -- ctus, 
  San -- ctus, 
  San -- ctus, __
  Do -- mi -- nus De -- us Sa -- ba -- oth.
  
  Ple -- ni sunt cae -- li.
  Ple -- ni sunt cae -- li
  et ter -- ra glo -- ri -- a tu -- a. __

  Ple -- ni sunt cae -- li et ter -- _ ra
  glo -- ri -- a tu -- a.
  Ple -- ni sunt cae -- li et ter -- _ ra
  glo -- ri -- a tu -- a.

  Ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis.
  Ex -- cel -- sis.

}



bass = \new Staff \with {instrumentName="Bass"
  shortInstrumentName ="B."} <<
  \hommes_style
  \armure
  \relative c' {\bass_music}
  \addlyrics {\bass_lyrics}
>>

upper = \relative c {
\armure
\rpiano_syle
  \override TextSpanner.bound-details.left.text = "rit."
r8 a'--^"Fraseggiato \"tangueado\""
bes-- d-- e-- g-- bes-- fis-- a1
<g bes,>2 g8( a) a( bes) bes2.~ 8 es,
a4. c,8( \tuplet 3/2 4 {d es f ges a bes)}
<<{c1}\\{r4 \tuplet 3/2 4 {bes,8( d f g f d)} r4}>>
bes'16_\< d,g bes d g, bes d 
g d g bes c bes c cis\!
r4_\f <d, g d'>-- <c g'c>-- <b g'b>--
<d fis d'>2 <c fis c'>
r16 bes( c bes des bes c bes)
\tuplet 3/2 {<g bes es>4--\startTextSpan <f aes des>-- 
             <es g c>8-- <des f bes>--}
\after 2.\stopTextSpan <<{bes'4.--(_\> es,8 <fis a>2)\!}\\{<c es fis>1}>>
\tempo "a tempo"
a'2._\mp d,4 bes'1 d2. g,4 es'1
f2. bes,4 <bes bes'>2
\tuplet 3/2 {d,8( f g)} bes r_\ff
r <g es c g>4-> <g c es g>8-. 
r g'-. <g c es g>4--
r8 <c,, es fis a>4-> <c'es fis a>8-. 
r c'-. <c es fis a>4->
\override TextSpanner.bound-details.left.text = "allarg."
<<
  {f,,2(\startTextSpan fes <es g,> <d fis,>)\stopTextSpan}
  \\
  {<des g,>1 c}
>>
\bar "||" \tempo 4=100
r8 <a bes d e>->_\mp r4 4-- r4
r8 8-> r8 8-> r8 8-> r4
r8 8-> r4 4-- r4 r8 4-> 8-. 16 16 4.->
r8 8-> r4 4-- r4 r8 8-> r8 8-> r8 8-> r4
r8 8-> r4 4-- r4
r8 a->(_\< bes) d-. e->( g) bes->( fis)\!
\bar "||"\break
r8 <a, bes d>4.->_\f r8 <a bes d e>4.->
r8 <a bes d>-> r8 8-> r8 8-> r4
r8 <bes d f>4.-> r8 <bes es g>4.->
r8 <a es'f>-> r8 8-> r8 8-> r4
r8 <a d f a>4.-> r8 <bes d f bes>4.->
r8 <a a'>-._\< 8( <bes bes'>-.) 8(-> <c c'>-.) 8->( <d d'>-.)
<c es g a>->\! 8-. r4 4-- r
<c es fis a>8-> 8-. r4 4-- r
<des g>4.->4.->4-> <c es g>4.->4.->r4
<bes d>8->(_\mf <c es>-.) 8->( <d f>-.) 8->( <c es>-.) 8->( <bes d>~1)
<c es>8->( <d f>-.) 8->( <es g>-.) 8->( <d f>-.) 8->( <c es>~1)
r8 <bes d>4->( <c es>8) r8 <d f>4->( <es g>8)
<d f>2(_\mp_\< <es g>4 <f a>)
<c es g a>8->_\f 8-. r4 4-- r
<c es fis a>8->_\f 8-. r4 4-- r
\override TextSpanner.bound-details.left.text = "rall."
<des g>4.->\startTextSpan 4.-> 4->
<c d fis>1\fermata\stopTextSpan \bar "||" \break
\tempo 4=128
<d bes'>4.--_\mf <d a'>-- <d g>4--
<c f>4.-- <bes es>-- <a d>4-- 
<bes es>4.-- <a d f>-- <bes es g>4--
<bes d f a>4.->4.->4->
<d bes'>4.-- <d a'>-- <d g>4--
<c f>4.-- <bes es>-- <a d>4-- 
<bes es>4.-- <a d f>-- <bes es g>4--_\<
<bes d f a>4.->4.->4->\!
<g'es'>4._\f <f d'> <es c'>4 <f bes>4. <f a> <f g>4
<g d'>4. <g c> <g bes>4 <f a>8->([_\> bes-.) a] 
<es g>->([ f-.) g-.] <f a>->( bes-.)
<c, es g c>->_\p_\<[ 8-.8-.] 8->[ 8-. 8-.] 8->8-.
8->[ 8-.8-.] 8->[ 8-. 8-.] 8->8-.
8->[ 8-.8-.] 8->[ 8-. 8-.] 8->8-.
<es ges d'>8->[ 8-.8-.] 8->[ 8-. 8-.] 8->^"rit."8-.\!
<es g c es>2 <d g b d>4 r_\f
\bar "||" \break
\tempo "Più lento" 4=110
r8 a''4-> d,8-. <c f aes>4-_ <b f'g>-_
r8 g'4-> c,8-. <bes es ges>4-_ <a es' f>-_
r8_\> d4-> f,8-. <g des'>4-- <fis c'>--
<d g bes>2. <d bes'>4(_\mf 4-- <cis a'>) 
r8 <es a c>4( <es bes' c>8 <d a'c>4-- <d g bes>) r
<f d'>( 4-- <es c'>) r8
<a es'>4( <bes es>8 <g es'>4-- <f d'>) r8
<d bes'>4->\startTextSpan <es c'>8
<f g des'>2-- <<{<es c'>--}\\{g4 fis}>>
<d g bes>1\fermata\stopTextSpan\fine
}



lower = \relative c {
\armure
\lpiano_syle
r1
<<
  {r8 d( bes' d es d bes a)
  g( fis) fis( f) f( e) es( d)
  r g( bes d es d bes c)
  r c,~ <c a' >2.
  r8 f r4 r \tuplet 3/2 {bes8 f bes,}
  r bes~ <bes g'>2.}
  \\
  {g1 1 c f, bes es,}
>>

<<{\set tieWaitForNote = ##t
   \tieDown
   r8 es'~ g~ c~ <es, g c>2
   r8 fis~ c'~ es~ <fis, c'es>2
   \tieNeutral
   \set tieWaitForNote = ##f
  }\\
  {a,1 \appoggiatura {d,16~} <a' d,>1}
>>

<es'g des'>2 \grace {des'16 d}
\tuplet 3/2 {es4 des c8 bes}
<<{r8 a,~ <a d>2.}\\{d,1}>>
<<
  {\tuplet 5/4 {r8 d'( e g a} bes a g d)
  \tuplet 5/4 {r8 d( e g a} bes a g d)
  \tuplet 5/4 {r8 g( bes c d} es d bes g)
  r8 c,( f a c es ges4)
  \tuplet 5/4 {r8 f,( g a bes} c bes a g)
  r8 bes,( g'bes) s4
  }
  \\
  {g,1 g c f, bes es,2.}
>>
r8 a,->~ 8 a'4.-> <g'c es>4-- 
r8 d,->~ 8 d'4.-> <c' es fis a>4--  r
r2 r4 <es,, bes'>( <d a'>2)
r8 d-. es16( e f fis)
\bar "||"\tempo 4 = 100 
g4 d g d8 f16( fis) g4 d g d8 8
g4 d g d8 f16( fis) g4 d g d8 8
g4 d g d8 f16( fis) g4 d g d8 8
g4 d g d8 f16( fis) g4 d g d8 8

\bar "||"\break

g4 d g d8 f16( fis) g4 d g d8 g8
c,4 g'c g8 c f,4 c f8( g) gis( a)
bes4 f bes bes,8( cis16 d)
es4 bes es bes'8 g16( gis)
a8-> 8-. r a, a'4-- r8 c16( cis)
d8->8-. r d, d'4-- d,->(
es) g bes es d \appoggiatura cis8 c4
a8 d,-. es16 e f fis g4 d g d
a'8->( g-.) 8->( fis-.) 8->( f-.) es->( d-.)
c4 g c g'8 c,
r8 f-. 8->( g) 8->( gis) 8->( a)
bes4 f bes bes,
es bes es bes'8 g16( gis)
a8-> 8-. r a, a'4-- r8 c16( cis)
d8-> d-. r d, d'4-- r
es, g bes es d1\fermata
\bar "||" \break
\tempo 4=128
g4. d es4 d4. c bes4 c4. bes a4 g4. bes d4
g4. d es4 d4. c bes4 c4. bes a4 g4. bes d4
<c g'>4. <c a'> <c bes'>4 <d a'>4. <d bes'> <d c'>4
<es bes'>4. <es c'> <es d'>4 <f es'>4. <es d'> <d c'>4
c4. 4. 4 bes4. 4. 4 a4. 4. 4 aes4. 4. 4
g2. es16 e f fis \bar "||" \break
\tempo "Più lento" 4=110
g4 r r g->( c) r r f,->( bes) r es,-- d--
g-- f-- es-- d-- r es' es-- d
r8 f,4 a8 bes4-- b r c es-- f
r8 bes,4 8 4-- 8 8 es4-- bes'-- a-- d,--
<g g,>1\fermata\fine
}

piano = \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

\include "utils/full.ly"
% \include "utils/tangoBase.ly"
