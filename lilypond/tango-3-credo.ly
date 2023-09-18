% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

% \paper { indent = 0\cm}

\header {
  title = "Misatango"
  subtitle = "3 - Credo"
  composer = "Martín Palmeri"
  tagline = ""

}

conductor_size = 18
individual_size = 20

\include "utils/macros.ly"


armure = {
\accidentalStyle modern-cautionary
\compressEmptyMeasures
\time 4/4
\tempo 4 = 110
\key c \minor
}


sop_music = {
  \override TextSpanner.bound-details.left.text = "rall."
  g'4.^\ff-> 4-> 8 8 8 4.-> 4.->~ 4 \breathe
  g4.->\startTextSpan 4-> 8 8-- 8-- 
  2--\stopTextSpan^\> 2\fermata\!
  \bar "||"
  R1*8 \break
  g4.^\mp^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. 4\!
  
  g4.^\< 4 8 8 8 4.-\> 4. \breathe 8\! 8
  4.^\cresc 4. 8 8 4. 4. 4 4. 4 4 8 4. 4. 4 
  4.^\cresc 4 4 8 1 \breathe
  c1--^\f 1-- 1-- 1-- 
  4.-- 4.-- 4-- 4.-- 4.-- 8 8 2. 4 \after 2.\! 1^\> \breathe
  R1*8
  \break
  aes4^\mp\( 8 8~ 8 4 8 g4 f8 8~ 4 4\)
  g\( 8 f~ 4 g e4. e\) \breathe d8\( e
  f4. 8~ 8 4 8 es4. d\) 8 8 d4. 4. 4 \break
  g4 f8 g4. \breathe 4^\f
  c4. 4. 4 4 8 4. 4 4 8 8~ 8 4 8 4. 4. r4
  es1^\ff d4. 4. 4 c2.( g4) aes2. \breathe g4
  4 8 f es4( d) c1~ 1~ 4\startTextSpan^\> r8 8 d2-- 
  c1\fermata\!\stopTextSpan
  \bar "||" \break \tempo "Moderato" 4=75
  r8^"Solo ad lib" es'4\( d16 c es d es4.~ 4.
  c8 \tuplet 3/2 {d4 es d8 c} 
  d4. c16( b d c) b4.~ 2.\) r4
  r8 es4\( d16 c es d es4.~ 4.
  c8 \tuplet 3/2 {f4 es d8 c} d2.( c4) g2\)
  c4--\( 4-- des4.^"Giùsto" c16( bes) des c des4.~ 4.
  bes8 \tuplet 3/2 {c4 des c8 bes}
  c4. bes16( aes c bes c4.)~ 2.\)\startTextSpan
  c8--\( 8-- des4.\stopTextSpan^"a tempo" c16( bes) des c des4.~ 4.\)
  bes8\( \tuplet 3/2 {es4 des c8 bes} c2(\startTextSpan^\> d e1)\)\fermata\!\stopTextSpan
  \bar "||" \break
  R1*5 \bar "||"
  r2^"tutti" r4 r8 b16--^\f c--
  d1 c2. r8 c16 d c1 c2. r8 b16 c d1 c2. r8 c16 d c2 4 r
  f,4.^\f 8 es4 des g2 4 \breathe 
  4 aes4.^\> 8 g4 f g2 4\! r
  r2 c4.^\mp bes8 aes4 g g2(\startTextSpan f) aes
  \after 2. \! g1\fermata\stopTextSpan^\>
  \bar "||" \break
  R1*21
  r8-. g[-.^\fa 8-. 8-.] aes-. 8-. 8-. g16 aes
  bes8-. 8-> r g-. es'8-. 4-> aes,8-.
  d-> g,-. r8 8-. c-. 4-> g8-.
  c->\( bes-.\) 8->\( aes-.\) g8 16 16 es'8( d) c2 r
}	


sop_lyrics = \lyricmode {
  Cre -- do in u -- num De -- um, __
  Pa -- trem om -- ni -- po -- ten -- tem.

  Cre -- do in u -- num De -- um, 
  Pa -- trem om -- ni -- po -- ten -- tem,
  Cre -- do in u -- num De -- um, 
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cae -- li et ter -- rae,
  vi -- si -- bi -- lium om -- ni -- um,
  et in -- vi -- si -- bi -- li -- um,
  et in u -- num, Do -- mi -- num.
  
  Je -- sum Chri -- stum,
  Fi -- li -- um De -- i u -- ni -- ge -- ni -- tum.
  
  De -- um ve -- rum de De -- o ve -- ro.
  Ge -- ni -- tum, __ non fa -- ctum,
  con -- sub -- stan -- ti -- a -- lem
  Pa -- tri: per quem o -- mni -- a fa -- cta sunt.
  
  Qui pro -- pter nos ho -- mi -- nes
  et pro -- pter no -- stram sa -- lu -- tem
  de -- scen -- dit de coe -- lis, 
  de -- scen -- dit de cae -- lis, __ de cae -- lis.
  
  Et in -- car -- na -- tus est __ 
  de Spi -- _ ri -- tu San -- _ cto, __

  et in -- car -- na -- tus est __ 
  de Spi -- _ ri -- tu San -- cto, __
  ex Ma -- ri -- a vir -- gi -- ne: __
  et ho -- mo fa -- ctus est. __ _
  Ex Ma -- ri -- a vir -- gi -- ne: __
  et ho -- mo fa -- ctus est. __
  
  Cru -- ci -- fi -- xus,
  cru -- ci -- fi -- xus,
  Cru -- ci -- fi -- xus,
  Cru -- ci -- fi -- xus,

  et -- i -- am pro -- no -- bis:
  sub Pon -- ti -- o Pi -- la -- to
  Pas -- sus, et se -- pul -- tus est.
  
  Et re -- sur -- re -- xit ter -- ti -- a di -- e
  se -- cun -- dum scri -- ptu -- ras,
  se -- cun -- dum scri -- ptu -- ras
  et a -- scen -- dit in coe -- lum.
  
}




sop = \new Staff \with {instrumentName="Soprano"
  shortInstrumentName ="S."} <<
  \soprano_style
  \armure
  \relative c' {\sop_music}
  \addlyrics {\sop_lyrics}
>>


alt_music = {
  g'4.^\ff-> 4-> 8 f8 8 es4.-> des4.->~ 4 \breathe
  c4.-> 4-> 8 8-- 8-- 2--^\> b2\fermata\!
  \bar "||"
  R1*8 \break
  g'4.^\mp^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. 4\!
  
  g4.^\< 4 8 8 8 4.-\> 4. \breathe 8\! 8
  4.^\cresc 4. 8 8 4. 4. 4 4. 4 4 8 4. 4. 4 
  4.^\cresc 4 4 8 1 \breathe
  es1--^\f f-- g-- f-- es4. 4. 4
  f4. 4. es8 f g2. 4 \after 2. \! f1^\> \breathe
  R1*8

  \break
  aes4^\mp\( 8 8~ 8 4 8 g4 f8 8~ 4 4\)
  g\( 8 f~ 4 g e4. e\) \breathe d8\( e
  f4. 8~ 8 4 8 es4. d\) 8 8 d4. 4. 4 \break
  g4 f8 g4. \breathe 4^\f
  es4. 4. 4 f4 8 4. es8( f) g4 8 8~ 8 4 8 f4. 4. r4
  g1^\ff f4. 4. 4 g2.( es4) f2. \breathe g4
  4 8 f es4( d) c1~ 1~ 4^\> r8 8 4-- b-- 
  c1\fermata\!
  \bar "||" \break \tempo "Moderato" 4=75
  R1*16 \bar "||" \break
  R1*5 \bar "||"
  r4 r8 f16--^\f g-- aes2~ 2 2
  r4 r8 es16 f g2~2 2
  r4 r8 f16 g aes2~ 2 2
  r4 r8 es16 f g2 2. r4
  b,4.^\f 8 4 4 b2 4 \breathe 4
  d4.^\> 8 4 4 es2 4\! r
  f4.^\mp 8 es4 d b2 c d1~ \after 2. \! 1\fermata^\>
  \bar "||" \break
  R1*17
  r8 c-.^\fa 8-. 8-. d-. 8-. 8-. c16 d
  es8-. 8-> r c-. aes'-. 4-> d,8-.
  g-> c,-> r c-> f-. 4-> d8-.
  f-> es-. 8-> des-. c8 16 16 a8-. b-. 
  c4 r8 es->~( 8) 4-> d8 4 c es f8 8 g2 2
  r8 4 es8 f8 16 16 g8( f) es2 r
}	


alt_lyrics = \lyricmode {
  Cre -- do in u -- num De -- um, __
  Pa -- trem om -- ni -- po -- ten -- tem.

  Cre -- do in u -- num De -- um, 
  Pa -- trem om -- ni -- po -- ten -- tem,
  Cre -- do in u -- num De -- um, 
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cae -- li et ter -- rae,
  vi -- si -- bi -- lium om -- ni -- um,
  et in -- vi -- si -- bi -- li -- um,
  et in u -- num, Do -- mi -- num.

  Je -- sum Chri -- stum,
  Fi -- li -- um De -- i u -- ni -- ge -- ni -- tum.
  
  De -- um ve -- rum de De -- o ve -- ro.
  Ge -- ni -- tum, __ non fa -- ctum,
  con -- sub -- stan -- ti -- a -- lem
  Pa -- tri: per quem o -- mni -- a fa -- cta sunt.
  
  Qui pro -- pter nos ho -- mi -- nes
  et __ pro -- pter no -- stram sa -- lu -- tem
  de -- scen -- dit de coe -- lis, 
  de -- scen -- dit de cae -- lis, __ de cae -- _ lis.

  Cru -- ci -- fi -- xus,
  cru -- ci -- fi -- xus,
  Cru -- ci -- fi -- xus,
  Cru -- ci -- fi -- xus,

  et -- i -- am pro -- no -- bis:
  sub Pon -- ti -- o Pi -- la -- to
  Pas -- sus, et se -- pul -- tus est. __

  Et re -- sur -- re -- xit ter -- ti -- a di -- e
  se -- cun -- dum scri -- ptu -- ras,
  se -- cun -- dum scri -- ptu -- ras
  et a -- scen -- dit in coe -- _ lum.
    
  Et re -- sur -- re -- xit,
  ter -- ti -- a di -- e
  et a -- scen -- dit in coe -- lum.

}



alt = \new Staff \with {instrumentName="Alto"
  shortInstrumentName ="A."} <<
  \alto_style
  \armure
  \relative c' {\alt_music}
  \addlyrics {\alt_lyrics}
>>

ten_music = {
  g'4.^\ff-> 4-> 8 8 8 4.-> 4.->~ 4 \breathe
  g4.-> 4-> 8 f8-- 8-- es2--^\> d2\fermata\!
  \bar "||"
  R1*8 \break
  g4.^\mp^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. 4\!
  
  g4.^\< 4 8 8 8 4.-\> 4. \breathe 8\! 8
  4.^\cresc 4. 8 8 4. 4. 4 4. 4 4 8 4. 4. 4 
  4.^\cresc 4 4 8 1 \breathe
  1--^\f f-- c'-- aes-- g4. 4. 4
  f4. aes4. 8 8 c2. g4 aes1^\>\breathe
  
  aes4.^\mp\( 4 4 8 g4. f\) 
  es8\( f g4. 4 f g8 e2.\) r4
  f4.\( 4. 4 es4. d\) r4
  d4.\( 8~^\< 4. 8 g f\! g4~ 2\)
  R1*7
  r2 r4 g^\f
  4. 4. 4 f aes8 4. 4 c4 8 8~8 4 g8 aes4. 4. r4
  c1^\ff aes4. 4. 4 g2.( c4) 2. \breathe r4
  r2 r4 d es4 8 d c4( bes) aes1~ 4^\> r8 f8 2-- es1\fermata\!
    \bar "||" \break \tempo "Moderato" 4=75
  R1*16 \bar "||" \break
  R1*4 r2 r4 r8 d'16--^\f es-- \bar "||"
  f1 2. r8 c16 d es1 2. r8 d16 es
  f1 2. r8 c16 d es1 2. r4 
  aes,4.^\f 8 4 4 g2 4 \breathe 4
  f4.^\> 8 g4 aes g2 4\! r
  r1 r2 c4.^\mp bes8 aes4 g g-- f-- \after 2. \! g1\fermata
  \bar "||" \break
  R1*13
  r8-. g[-.^\fa 8-. 8-.] aes-. 8-. 8-. g16 aes
  bes8-. 8-> r g-. es'8-. 4-> aes,8-.
  d-> g,-. r8 8-. c-. 4-> g8-.
  c-> bes-. 8-> aes-. g8 16 16 c8-. b-. c4 r
  r8 bes8-.8-.8-. aes4--4-- r8 8-.8-.8-.
  bes4--4-- r8 c-.8-.8-. b2 aes4 g8( f) es4 r r2
  r8 g-.8-.8-. aes4--4-- r8 b-.8-.8-. c4--4--
  r8 aes4 c8 8 16 16 8( b) c2 r
}	


ten_lyrics = \lyricmode {
  Cre -- do in u -- num De -- um, __
  Pa -- trem om -- ni -- po -- ten -- tem.

  Cre -- do in u -- num De -- um, 
  Pa -- trem om -- ni -- po -- ten -- tem,
  Cre -- do in u -- num De -- um, 
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cae -- li et ter -- rae,
  vi -- si -- bi -- lium om -- ni -- um,
  et in -- vi -- si -- bi -- li -- um,
  et in u -- num, Do -- mi -- num.

  Je -- sum Chri -- stum,
  Fi -- li -- um De -- i u -- ni -- ge -- ni -- tum.
  
  Et ex __ Pa -- tre na -- tum __ 
  an -- te o -- mnia __ sae -- cu -- la.
  
  De -- um __ de De -- o,
  Lu -- men __ de lu -- mi -- ne. __
  
  Qui pro -- pter nos ho -- mi -- nes
  et pro -- pter no -- stram sa -- lu -- tem
  de -- scen -- dit de coe -- lis,
  
    de -- scen -- dit de cae -- lis, __  de cae -- lis.
    
  Cru -- ci -- fi -- xus,
  cru -- ci -- fi -- xus,
  Cru -- ci -- fi -- xus,
  Cru -- ci -- fi -- xus,

  et -- i -- am pro -- no -- bis:
  sub Pon -- ti -- o Pi -- la -- to
  Pas -- sus, et se -- pul -- tus est.
  
  Et re -- sur -- re -- xit ter -- ti -- a di -- e
  se -- cun -- dum scri -- ptu -- ras,
  se -- cun -- dum scri -- ptu -- ras
  et a -- scen -- dit in coe -- _ lum.
  
  Et re -- sur -- re -- xit,
  et re -- sur -- re -- xit,
  se -- cun -- dum scri -- _ ptu -- ras.
  
  Et re -- sur -- re -- xit,
  et re -- sur -- re -- xit,
  et a -- scen -- dit in coe -- lum.

}



ten = \new Staff \with {instrumentName="Tenor"
  shortInstrumentName ="T."} <<
  \alto_style
  \armure
  \relative c' {\ten_music}
  \addlyrics {\ten_lyrics}
>>


bass_music = {
  g4.^\ff-> 4-> 8 f8 8 es4.-> des4.->~ 4 \breathe
  c4.-> 4-> 8 bes8-- 8-- aes2--^\> g2\fermata\!
  \bar "||"
  R1*8 \break
  g'4.^\mp^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. r4\!
  g4.^\< 4 8 8 8 4.-\> 4. 4\!
  
  g4.^\< 4 8 8 8 4.-\> 4. \breathe 8\! 8
  4.^\cresc 4. 8 8 4. 4. 4 4. 4 4 8 4. 4. 4 
  4.^\cresc 4 4 8 1 \breathe
  c,1--^\f d-- es-- d-- c4. 4. 4
  d4. 4. c8 d es2. 4 d1^\>\breathe
\break


  aes'4.^\mp\( 4 4 8 g4. f\) 
  es8\( f g4. 4 f g8 e2.\) r4
  f4.\( 4. 4 es4. d\) r4
  d4.\( 8~^\< 4. 8 g f\! g4~ 2\)
  R1*7
  r2 r4 g^\f
  c,4. 4. 4 d4 8 4. c8( d) es4 8 8~8 4 8 d4. 4. r4
  c1^\ff d4. 4. 4 es2.( 4) d2. \breathe r4
  r1 r2 r4 bes' c4 8 bes aes4( g) f^\> r8 d g,2-- c1\fermata\!
  \bar "||" \break \tempo "Moderato" 4=75
  R1*16 \bar "||" \break
  R1*4 r2 r4 r8 d16--^\f es-- \bar "||"
  f1 2. r8 c16 d es1 2. r8 d16 es
  f1 2. r8 c16 d es1 2. r4 
  des4.^\f 8 es4 f4 g2 4 \breathe 4
  b,4.^\> 8 4 4 c2 4\! r
  r1 f4.^\mp 8 es4 d b2 c \after 2. \! g1\fermata
  \bar "||" \break
  R1*9 r8 c-.^\fa 8-. 8-. d-. 8-. 8-. c16 d
  es8-. 8-> r c-. aes'-. 4-> d,8-.
  g-> c,-> r c-> f-. 4-> d8-.
  f-> es-. 8-> des-. c8 16 16 a8-. b-. c4 r r8
  bes8-. 8-. 8-. es4-- 4-- r8 c8-.8-.8-.
  f4-- 4-- r8 es8-.8-.8-. aes,2 d4 g, c r r2
  r8 8-.8-.8-. f4-- bes,-- r8 es8-.8-.8-. aes4-- aes,--
  r8 des8-.8-.8-. d4-- g,--
  c r8 8->(~ 8) bes4-> 8 es4--4-- r8 c8-.8-.8-.
  f4--4-- r8 es8-.8-.8-. aes,2 d4 g, c2 r
}	


bass_lyrics = \lyricmode {
  Cre -- do in u -- num De -- um, __
  Pa -- trem om -- ni -- po -- ten -- tem.
  
  Cre -- do in u -- num De -- um, 
  Pa -- trem om -- ni -- po -- ten -- tem,
  Cre -- do in u -- num De -- um, 
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cae -- li et ter -- rae,
  vi -- si -- bi -- lium om -- ni -- um,
  et in -- vi -- si -- bi -- li -- um,
  et in u -- num, Do -- mi -- num.

  Je -- sum Chri -- stum,
  Fi -- li -- um De -- i u -- ni -- ge -- ni -- tum.

  Et ex __ Pa -- tre na -- tum __ 
  an -- te o -- mnia __ sae -- cu -- la.

  De -- um __ de De -- o,
  Lu -- men __ de lu -- mi -- ne. __

  Qui pro -- pter nos ho -- mi -- nes
  et __ pro -- pter no -- stram sa -- lu -- tem
  de -- scen -- dit de coe -- lis, 
  de -- scen -- dit de cae -- lis, de cae -- lis.
  
  Cru -- ci -- fi -- xus,
  cru -- ci -- fi -- xus,
  Cru -- ci -- fi -- xus,
  Cru -- ci -- fi -- xus,

  et -- i -- am pro -- no -- bis:
  sub Pon -- ti -- o Pi -- la -- to
  Pas -- sus, et se -- pul -- tus est.
  
  Et re -- sur -- re -- xit ter -- ti -- a di -- e
  se -- cun -- dum scri -- ptu -- ras,
  se -- cun -- dum scri -- ptu -- ras
  et a -- scen -- dit in coe -- _ lum.
  
  Et re -- sur -- re -- xit,
  et re -- sur -- re -- xit,
  se -- cun -- dum scri -- _ ptu -- ras.
  
  Et re -- sur -- re -- xit,
  et re -- sur -- re -- xit,
  se -- cun -- dum scri -- ptu -- ras.

  Et re -- sur -- re -- xit,
  et re -- sur -- re -- xit,
  se -- cun -- dum scri -- _ ptu -- ras.

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
  \override TextSpanner.bound-details.left.text = "rall."
  g''4._\ff 4-> 8 <f g>8 8 <es g>4.-> <des g>4.->~ 4
  <c g'>4.->\startTextSpan 4-> 8 8-- 8-- 
  2--\stopTextSpan_\> <b g'>\fermata\!\break
  \bar "||"
  \tempo "Più mosso" 4=125
  <<{c'4._ \mf 8~ 8 d es f g4. f8~ 2
    g4. 8~ 8 c bes aes g1}\\
    {r8 <g,, c es g>8 8 r8 8 8 r8 8
    r8 <aes c d g>8 8 r8 8 8 r8 8
    r8 <g c es g>8 8 r8 8 8 r8 8
    r8 <aes c d g>8 8 r8 8 8 r8 8}
  >>
  <<{c'4._ \mf 8~ 8 d es f g4. f8~ 2
    g4. 8~ 8 c bes aes \after 4 _\> \after 2. \! g1}\\
    {r8 <c,, es g>8 8 fis <c es g>16( fis) <c es g>4 8
     r8 aes( c) g' <g c, aes>16( f) <g c, aes>4.
    r8 <c, es g>8 8 fis <c es g>16( fis) <c es g>4 8
    r8 <c g'>( f)-. es-. d\mordent c bes aes-.}
  >>
  
  r8_\mp g( c es g es c g) r8 aes( c d g d c aes)
  r8 g( c es g es c g) r8 aes( c d g d c aes)
  r g->( aes)-. a-. bes16( b) d4-> c8-.
  r aes(-> bes-.) c-. d16( es) f4.->
  r8_\< d->( es)-. g-. g16( f) aes4-> g8-.
  g->(\> aes)-. aes(-> bes)-. bes->( c->) <es bes g e>->( des-.)
  
  g,(_\< es c) g'([ es c)] g'( es)
  g(_\> d c) g'([ d c)] g'( d)\!
  g(_\cresc d g,) g'([ d g,)] g'( d)
  g( c, g) g'([ c, g)] g'( c,)
  g'( c, aes) g'([ c, aes)] g'( c,)
  g'( c, aes) g'([ c, aes)] g'( c,)
  g'(_\cresc c, aes) g'([ c, aes)] g'( c,)
  g'( c, aes) g'([ c, aes)] <c ges'>( <b f'>)
  
  r_\f <g c es g>-. 8-. r8 8-. 8-. r8 8-.
  r <aes c d g>-. 8-. r8 8-. 8-. r8 8-.
  r <g c es g>-. 8-. r8 8-. 8-. r8 8-.
  r <aes c d g>-. 8-. r8 8-. 8-. r8 8-.
  r <c es g>-. 8-. fis8-. <c es g>16( fis) <c es g>4-> 8-.
  r aes->( c) g'-. <g c, aes>16( f) <g c, aes>4.->
  r8 <c, es g>-. 8-. fis8-. <c es g>16( fis) <c es g>4-> 8-.
  r_\> <c g'>->( f) es-. d\mordent c bes aes
  
  r\mp aes( es' aes es aes, es'aes,)
  r aes( des aes' des, aes des) r
  r g,( d' g d g, d'g,)
  r g( c e g c e g)
  r f,,( c'f c f, c'f,)
  r bes( d f d bes d bes)
  r <c d ges>-._\p_\< 8-. r8 8-. 8-. r8 8-.
  r <c d f>-. 8-. r8 8-. 8-. r <b d f>-.
  
  r\mp aes( es' aes es aes, es'aes,)
  r aes( des aes' des, aes des) r
  r g,( d' g d g, d'g,)
  r g( c e g c e g)
  r f,,( c'f c f, c'f,)
  r bes( d f d bes d bes)
  r <c d ges>-._\p_\< 8-. r8 8-. 8-. r8 8-.
  r <c d f>-. 8-. r8 8-. 8-. r <b d f>-.
  
  r_\f <g c es g>8-. 8-. r8 8-. 8-. r8 8-.
  r <aes c d g>8-. 8-. r8 8-. 8-. r8 8-.
  r <g c es g>8-. 8-. r8 8-. 8-. r8 8-.
  r <aes c d g>8-. 8-. r8 8-. 8-. 
  g'''4*3/4-\tweak style #'zigzag \glissando
  \single \hideNotes g,,4*1/4
  es'8(_\ff c g) es'([ c g)] es'16( c g8)
  d'8( aes f) d'([ aes f)] d'16( aes f8)
  c'8( g es) c'([ g es)] c'16( g es8)
  r2 f8( aes c d)
  r8 <g,, c es>4.-> r8 4.->
  r8 <g c es>4.-> r8 4.->
  r8 <aes c f>4.-> r8 4.->
  r1\startTextSpan_\> <g c es>\fermata\!\stopTextSpan
  \bar "||" \break \tempo "Moderato" 4=75
  <es' aes>1~_\p 1 <d g>1~1 <es aes>1~ 1 <d es g>( <c es g>)
  r8^"Giùsto" <aes d>4.->~ 2 r8 <g des'>4.->~ 2
  r8 <g c>4.->~ 2~ 1\startTextSpan r8\stopTextSpan
  <bes des f>4.->~^"a tempo" 2 r8 <g bes des e>4. <es' g bes es>2->\arpeggio 
  <es aes c>\startTextSpan_\> <e g b d> <f a e'> <g b e>\stopTextSpan\!\fermata
  \bar "||" \break
  r1_\f  <bes, d es g>8-> 8-. r4 4--_\p r4_\f
  8-> 8-. r4 4--_\p r4_\f
  8-> 8-. r4 4--_\p r4_\f \break
  8-> 8-. r4 4--_\p_\< r4
  \bar "||"
  <aes c d g>8->_\f 8-. r4 4-- r4
  8-> 8-. r4 4-- r4
  <bes d es g>8-> 8-. r4 4-- r4
  8-> 8-. r4 4-- r4
  <aes c d g>8-> 8-. r4 4-- r4
  <aes c d g>8-> 8-. r4 4-- r4
  <bes d es g>8-> 8-. r4 4-- r4
  8-> 8-. r4 4-- r4
  <b f'>4.-\f 8 <b es>4 <b des> <b g'>2 4 \breathe
  4 <d aes'>4._\> 8 <d g>4 <d f> <es g>1\!
  R1*4 \bar "||" \break
  \tempo "Allegro" 4=130
  r1_\f r8 c8-. 8-. 8-. d-. d-. d-. c16( d)
  es8-> 8-. r c-. aes'16->( c,) aes'4->( d,8-.)
  g->( c,-.) des16( d es e) f8-. 4->( d8-.)
  f8->( es)-. es->( des)-. c-. 16 16 a8-. b-.
  c8-. g'[-. 8-. 8-.] aes-. 8-. 8-. g16( aes)
  bes8-> 8-. r g-. es'8 4->( aes,8)-.
  d->( g,)-. aes16 a bes b c8-. 4->( g8)-. 
  c->( bes-.) bes->( aes-.) g8 16 16 c8->( b-.)
  c-. <c, es g>-. 4-> 8-. 4.-> r8 8->4->
  <a es' aes>8-> 8-. r <aes d g>-.
  r <g d'g>-. 4-> <ges c f>8-. 4.->
  r8 <f b es>-. 4-> <f aes c>-- <f aes b>--
  r8 es->( g)-. c-. r aes(-> d)-. aes'
  r g, ->( d')-. g-. r aes,(-> es')-. aes-.
  r8 b,(-> d)-. g-. r c,(-> g')-. c-.
  r c,(-> g')-. c-. r <c, f c'>4->( <b f' b>8-.)
  <c es c'>4 r r2
  r8 <g es'>8-.8-.8-. <aes es'>4-- <aes d>--
  r8 <g d'>8-.8-.8-. 4-- <g c>--
  r8 <f b es>8-.8-.8-. <f aes c>4-- <f aes b>--
  <es g c>4 r8 <g es'>8~-> 8 <aes es'>4-> <aes d>8
  <g d'>4--4-- r8 <aes es'aes>8-.8-.8-.
  <b d g>4--4-- r8 <c g'>8-.8-.8-.
  2 <<{f}\\{c4( b)}>> <g c es>_\< r r
  \tuplet 3/2 {<g c>8 <gis cis> <a d>}
  <es' c'>_\ff
}



lower = \relative c {
\armure
\lpiano_syle
  g'4. 4-> 8 <f g>8 8 <es g>4.-> <des f>4.->~ 4
  <c g'>4.-> 4-> 8 <bes f'>-- 8-- <aes es'>2-- <g d'>\fermata\!
  \bar "||"
  \tempo "Più mosso" 4=125
  <c, c'>4. 4. 4 <d d'>4. 4. 4 <es es'>4. 4. 4 <d d'>4. 4. 4
  <c c'>4. 4. 4 <d d'>4. 4. 4 <es es'>4. 4. 4 <d d'>4. 4. 4
  
  c4. 4. 4 d4. 8~ 8 c d c es4. 8~ 4 d8 c d c d2 g,4
  c4. 4. 4 d4. 4. 4 es4. 4. 4 e4. 4. 4
  f4. 4. 8( g) bes4. 4. bes,4 es4. 4. 8( f) aes4. 4. 4
  d4. c4. bes4 aes4. g4. f4 es4. d4. aes'4 g4. 4. aes8( g)
  <c, c'>4. 4. 4  <d d'>4. 4. 4 <es es'>4. 4. 4 <d d'>4. 4. 4
  <c c'>4. 4. 4  <d d'>4. 4. 4 <es es'>4. 4. 4 <d d'>4. 4. 4
  
  c'4. c, c'4 f,4. 4. 8 c
  b4. b'b,4 bes'4. bes, bes'4
  a4. a, a'4 aes4. aes, aes'4 aes4. ges d4 g4. 4. 4
  
  c4. c, c'4 f,4. 4. 8 c
  b4. b'b,4 bes'4. bes, bes'4
  a4. a, a'4 aes4. aes, aes'4 aes4. ges d4 g4. 4. 4
  
  <c c,>4. 4. 4 <d d,> 4. 4. 4 <es es,> 4. 4. 4 <d d,>4. 4. 4
  c8( g' es') c,([ g'es']) c,16( g'es'8)
  d,( f c') d,([ f c']) d,16( f c'8)
  es,( g c) es,([ g c]) es,16( g c8)
  d,( f aes c) r2

  c,4 c, bes'bes,aes'aes,g'g,f''f,es'es,
  <d d'>2 <g, g'> c1\fermata
  \bar "||" \break \tempo "Moderato" 4=75
  <f' c'>1~ 1 <e b'>1~ 1 <f c'>1~ 1
  <<{<g bes> a2 aes}\\{c,1~1}>>
  bes4 4 4 4 a4 4 4 8( es) aes4 4 4 4
  8 g f es des c bes-- aes-- g4 g'g, aes16( a bes b) c2
  <e' g bes es!>\arpeggio
  <f c'> <e b'd> <d a'c> <c g'e'>\fermata \bar "||" \break
  r2 r4 
  aes16( a bes b) c8-> 8-. r g c4-- 
  aes16( a bes b) c8-> 8-. r g c4-- 
  aes16( a bes b) c8-> 8-. r g c4-- 
  aes16( a bes b) c8-> 8-. r g \repeat tremolo 8 {c,32 c'32}
  \bar "||"
  f,8-> 8-. r c f4-- 
  des16( d es e) f8-> 8-. r c f4-- 
  aes,16( a bes b) c8-> 8-. r g c4--
  aes16( a bes b) c8-> 8-. r g c4--
  des16( d es e) f8-> 8-. r c f4--
  des16( d es e) f8-> 8-. r c f4--
  aes,16( a bes b) c8-> 8-. r g c4--
  aes16( a bes b) c8-> 8-. r g c4-- c,->(
  <des'' aes'>4.) 8 <es aes>4 <f aes> 
  <g, g'>2 4 \breathe 4 <b f'>4. 8 <b g'>4 <b aes'> <c g'>1
  R1*4 \bar "||" \break
  r2 r8 g-. aes16( a bes b) c4 4 bes4 4 aes g f8-> 8-. r bes,->
  es4 4 aes8-> 8-. r aes,8-.
  des4 4 d g, c c bes bes es es c c f f es es aes aes d g,
  c c bes bes aes g f bes, es es aes aes, des des d g,
  c c bes bes es es c c f f es es as aes d g, c r r2
  r8 8-.8-.8-. f4-- bes,-- r8 es8-.8-.8-. aes,4-- aes,--
  r8 des'8-.8-.8-. d4-- g,--c4 r8 8->~ 8 bes4-> 8
  es4-- 4-- r8 c-.8-.8-. f4--4-- r8 es8-.8-.8-.
  aes,2 d4( g,) c,8(-> d) es-. f-. g(-> aes) \tuplet 3/2 {a bes b}
}

piano = \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

%\include "utils/full.ly"
\include "utils/tangoBase.ly"
