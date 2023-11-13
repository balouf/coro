% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

% \paper { indent = 0\cm}

\header {
  title = "Misatango"
  subtitle = "5 - Benedictus"
  composer = "Martín Palmeri"
  tagline = ""

}

conductor_size = 18
individual_size = 20

\include "utils/macros.ly"


armure = {
\accidentalStyle modern-cautionary
\compressEmptyMeasures
\tempo 2 = 50 - 54
\time 4/4
\key g \major
}


sop_music = {
g'1^\p 1 1 1 \breathe
1^\cresc 1 1 2. \breathe
g4^\mp^"Solo"\( \bar "||" \break
4^"espressivo" 8 a b c d4~2. 4 4 c8 b d c b4~2.\) \breathe
g4\( 4 8 a b c d4~2. 4 4 a8 b d c b4~2.\) r4
R1*3 r2 r4
g4^\mp^"tutti"\(
4^"espressivo" 8 a b c d4~2. 4 4 c8 b d c b4~2.\) \breathe
g4\( 4 8 a b c d4~2. 4 4 a8 b d c b4~2.\) \breathe
g4^\<\( 4 8 8 8^\> 8 4~2.\) 
g4^\<\( 4 8 8 8^\> 8 4~2.\)\breathe
g4^\<\( 4 8 8 8^\> 8 4~2.\) 
g4^\<\( 4 8 8 8 8 4~2.\)\breathe 4^\mf
fis4 8 gis a b cis4~2. 4 4 b8 a cis b a4~2. \breathe
fis4 4 8 gis a b cis4~2. 4 4^\< b8 a cis b 
a4~1^\> \breathe
fis2.^\pp\( e4 gis2 fis\)
a2.\( gis4 b2 a\) \breathe
c^\mp\( b d2. c4\) \breathe
\override TextSpanner.bound-details.left.text = "rall."
e2--^\mf\startTextSpan <d e>-- <c e>--
<b e>\fermata\stopTextSpan \bar"||" \break
r1 r2 r4 r8 <b d>^\ff 
<<{\voiceOne d1}
  \new Voice {\voiceTwo b2( a)}
>> 
\oneVoice
<g b> r4 r8 8
<<{\voiceOne c1 d2 e g g \after 2 \! g2.^\> \breathe}
  \new Voice {\voiceTwo b,2( a) b d4 c_"ex" c1_"cel  -  -  -" b2. }
>> \oneVoice r4
r1 r2 r4 g^\mp\( a2 b \after 2.. \! d1^\>\) \breathe
e2^\p\( d c b\) c\(\startTextSpan b a g~\)
1~^\> \after 2.. \! 1\fermata\stopTextSpan\fine 
}	


sop_lyrics = \lyricmode {
  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __

  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __

  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __
  
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __

  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  be -- ne -- dic -- tus.
  
  Ho -- sa -- na ho -- sa -- na 
  in ex -- cel -- sis.
  Ho -- sa -- _ na Ho -- _ sa -- na 
  in ex -- cel -- sis. __

}




sop = \new Staff \with {instrumentName="Soprano"
  shortInstrumentName ="S."} <<
  \soprano_style
  \armure
  \relative c' {\sop_music}
  \addlyrics {\sop_lyrics}
>>


alt_music = {
d1^\p 1 1 1
1^\cresc 1 1 2.\! r4
\bar "||"
R1*12
g2.^\mp\( fis4 a2 g\) 
b2.\( fis4 a( g) fis( d)\)\breathe
e2\( fis a4 g2\) 4\( 2. fis4 g2.\) r4 r2 r4
g4^\<\( 4 8 8 8^\> 8 4~2.\) 
g4^\<\( 4 8 8 8^\> 8 4~2.\)\breathe
g4^\<\( 4 8 8 8^\> 8 4~2.\) 
g4^\<\( 4 8 8 8 d d\) e
fis2^\mf 4 4 2 4 4 2 2 1 \breathe
cis4(-- dis) dis--( eis)
b--( cis) cis-- dis 
d^\< g8 8 4 f8 8 4.^\> fis8 2\! \breathe 
R1*2 fis2.^\p\( e4 gis2 fis\)\breathe
e\( d g2. a4\)\breathe
b2--^\mf a-- g-- fis\fermata \bar "|| "\break
g--(^\mf^\< a--) fis-- g--
e--^\ff fis-- d-- e-- \breathe
e( fis) a4 g g a b2( a) g2.^\> \breathe
4\(^\mp 1 1\) 2.\( 4 2^\> 4\) \breathe
4^\p\( 1 1\) 2.\( 4 2 2~\) 1~^\>
\after 2.. \! 1\fermata\fine
}	


alt_lyrics = \lyricmode {
  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,

  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus, __
  be -- ne -- dic -- tus,
  qui ve -- _ nit,
  
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni,  
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Be -- ne -- dic -- tus, 
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni.

  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  be -- ne -- dic -- tus.
  
  Ho -- sa -- na in ex -- cel -- sis,
  ho -- sa -- na in ex -- cel -- sis.

  Ho -- sa -- na in ex -- cel -- sis,
  Ho -- sa -- na in ex -- cel -- sis. __
}



alt = \new Staff \with {instrumentName="Alto"
  shortInstrumentName ="A."} <<
  \alto_style
  \armure
  \relative c' {\alt_music}
  \addlyrics {\alt_lyrics}
>>

ten_music = {
b'1^\p 1 1 1 \breathe
1^\cresc 1 1 2.\! r4
\bar "||"
R1*12
b2^\mp\( c c b\) g\( a a g\)\breathe
r2 r4 a\( g4 8 a b c b4~4\)
c\( c a8 b d4. c8 b4\) r
e2\( d c b\) c\( b a g\) \breathe
r4 e'2\( d4~4 c2 b4~4\) 
c2\( b4 a2 g4\) \breathe 4^\mf
a4 8 b cis b a4~2. 4 4 gis8 fis a gis fis4~1\breathe
fis2-- gis-- e-- fis4-- 4 b4^\< 8 8 4 8 8
cis4.--^\> 8 2\!\breathe
r2 r4 fis,^\pp\( 4 8 8 8 8 4~2.\)
4\( 4 8 8 8 8 4~2.\) \breathe
4\( 4 8 8 8 8 4~2.\) \breathe
g4^\mf a4 8 b c-- d-- c4--\fermata \bar "||" \break
r1 r2 r4 r8 <g d'>^\ff 
<<{\voiceOne d'1}
  \new Voice {\voiceTwo g,2( a)}
>> 
\oneVoice
<g b> r4 r8 8
<<{\voiceOne c1}
  \new Voice {\voiceTwo g2( a)}
>> \oneVoice <g d'> g e'e d2.^\>\breathe r4\!
e2^\mp\( d c b\) c\( b a^\> \after 4. \! g\)\breathe
r1 r2 r4 g^\p\( a2 b d1~\) 1~^\> \after 2.. \! 1\fermata\fine
}	


ten_lyrics = \lyricmode {
  Be -- ne -- dic -- tus,
  Be -- ne -- dic -- tus,
  
  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  qui ve -- nit in no --  mi -- ne __
  in no -- mi -- ne Do -- mi -- ni.
  
  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  be -- ne -- dic -- tus, __
  be -- ne -- dic -- tus,
  
  qui ve -- nit in no --  mi -- ne __
  in no -- mi -- ne Do -- mi -- ni. __
  Be -- ne -- dic -- tus,
  qui ve -- nit in no --  mi -- ne Do -- mi -- ni,
  
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni.  
  
  Ho -- sa -- na ho -- sa -- na 
  in ex -- cel -- sis.
  
  Ho -- _ sa -- na in ex -- cel -- sis,
  Ho -- sa -- _ na. __


  
  }



ten = \new Staff \with {instrumentName="Tenor"
  shortInstrumentName ="T."} <<
  \alto_style
  \armure
  \relative c' {\ten_music}
  \addlyrics {\ten_lyrics}
>>


bass_music = {
  g2^\p a fis g e fis d e \breathe
  g2^\cresc a fis g e fis d e\!
  \bar "||"
  R1*12
  g2^\mp\( a fis g\) e\( fis d e\)\breathe
  c\( d b c4\) 4\( a4 8 8 d4 8 8 g4. g,8 4\) r
  c'2\( b a g\) d\( e d g\) \breathe
  c2\( b a g\) d\( e d g\) \breathe
  fis2--^\mf gis-- e-- fis--
  d-- e-- cis-- d-- \breathe
  b-- cis-- a-- b4-- 4
  g^\< 8 a b d cis4 fis4.^\> 8 4 \breathe
  4\(^\pp 4 8 8 8 8 4~2.\)
  4\( 4 8 8 8 8 4~2.\) \breathe
  4\(^\mp 4 8 8 8 8 4~2.\) \breathe
  4\(^\mf 4 8 8 e8 8 4\)
  a,4.-- 8-- d2\fermata \bar "||" \break
  g--(^\mf^\< a--) fis-- g--
  e--^\ff fis-- d-- e-- \breathe
  c( d) b c a4 4 d2 g,2.^\> \breathe r4\!
  c'2^\mp\( b a g\) d\( e d^\> \after 4. \! g\) \breathe
  c2^\p\( b a g\) d\( e d g\) \breathe
  g^\pp^\> a fis\fermata g\fermata\!\fine
}	


bass_lyrics = \lyricmode {
  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,

  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  qui ve -- nit in no --  mi -- ne
  Do -- mi -- ni.

  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,

  Be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  be -- ne -- dic -- tus,
  qui ve -- nit in no --  mi -- ne
  Do -- mi -- ni,
  
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni, __
  qui ve -- nit in no -- mi -- ne __
  in no -- mi -- ne Do -- mi -- ni,
  Do -- mi -- ni.
  
  Ho -- sa -- na in ex -- cel -- sis,
  ho -- sa -- na in ex -- cel -- sis.

  Ho -- _ sa -- na in ex -- cel -- sis,
  Ho -- _ sa -- na in ex -- cel -- sis,
  Ho -- _ sa -- na.

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
<fis a b e>1_\p~ 1 1~1 1_\cresc~1 1~1
\bar "||"
r8_\p b( d g) r c,( d fis) 
r a,( d a') r b,( d g)
r b,( d g) r c,( d a')
r c,( e fis) r c( e g)
r g,( e' g) r a,( d fis)
r d( fis b) r e,( g c)
r e,( g c) r es,( fis c')  
<<{r8 _\mp_\< g( a b c d e fis
g4 fis8 e d c d4~2.) \tuplet 3/2 {b8\!( c d}
e4 d8 c b a g4)~1
  }\\
  {s1 s2. b4~4 fis8 d g fis g4 s1 s1}>>
<b, d g>4_\mp r <c e g> r <c d a'> r <b d a'> g'
<d g b> r <d a'd> r <c e g a> g'<g fis b,> d
r8 g,( e'g) r a,( d fis)
r d( g d') r e,( g c)
r e,( g c) r es,( fis c')
r d,( fis b) d4 g
g, g'8 g, g'g,g'4 g,g'8 g,g'g,g'4
g, g'8 g,g'g,g'g,g'g,g'g,r g g'g,
r8 fis'(^"solo" g a) b(_\>a) c( b)
d( c) e( d) g(\! fis) fis(_\< e)
e( d) \tuplet 3/2 {b( c d)} e(\! d)_\> d( c)
c( b) b( a) g2\!
r8 a,,( cis fis) r a,( cis fis)
r8 a,( cis fis) r a,( cis fis)
r8 a,( cis fis) r a,( cis fis)
r8 a,( cis fis) r a,( cis fis)
<cis cis'>4-- <dis dis'> <dis dis'>-- <eis eis'>
<b b'>-- <cis cis'> <cis cis'>-- <dis dis'>
<d g b d>_\< <g b d g>4 4 <f b d f>
<eis a cis eis>4._\> <fis fis'>8 <fis a cis fis>2\!
r8_\pp a,( cis fis) r a,( cis fis)
r8 a,( cis fis) r a,( cis fis)
r8 a,( cis fis) r a,( cis fis)
r8 a,( cis fis) r a,( cis fis)
r8 c( e a) r c,( e a)
r8 c,( e a) r c,( e a)
\override TextSpanner.bound-details.left.text = "rall."
r8\startTextSpan c,( e a) r c,( e a)
r8 c,( e g) 
<c, e fis b>2\fermata\stopTextSpan \bar "||" \break 
r8 b( d g) r c,( d fis)
r a,( d a') r b,( d g)
r b,( d g) r c,( d  a')
r c,( e fis) r c( e g)
r g,( e'g) r a,( d fis) 
r d( g d') r e,( g c) 
r e,( g c) r e,( g c)
r d,( fis b) d4 g
g,_\mp g'8g,g'g,g'4 g,g'8g,g'g,g'4
g,g'8g,g'_\>g,g'g,g'g,g'g,r g g'g,\!
R1*2 r1\startTextSpan r1
<g d b>1~\pp_\> \after 2.. \! 
1\fermata\stopTextSpan\fine
}



lower = \relative c {
\armure
\lpiano_syle
<g g'>2 <a a'> <fis fis'> <g g'> 
<e e'> <fis fis'> <d d'> <e e'>
<g g'>2 <a a'> <fis fis'> <g g'> 
<e e'> <fis fis'> <d d'> <e e'>
\bar "||"
<g g'>2 <a a'> <fis fis'> <g g'> 
<e e'> <fis fis'> <d d'> <e e'>
<c c'> <d d'> <b b'> <c c'>
<a a'> <d d'> <g g,>1
<<{r8 g'e'4 r8 a, fis'4
  r8 g, d'4 r8 g, e'4
  r8 e, c'4 r8 c e4
  r8 a, b a \tuplet 3/2 {g4 a g8 d} }
  \\
  {c2 d b c a d~<d c'e>1}>>
g4 r a r fis r g r e r fis r d r e r
<c c,>2 <d d,> <b b,> <c c,> <a a,> <d d,>
<g,g,> r8 a'( b d)
<c e>2 <b d> <a c> <g b> <d c'> <e b'> <d a'> g
<<{r4 e'r d r c r b r c r b}\\{c2 b a g d e}>>
<d a> g
<fis,fis'>2-- <gis gis'>-- <e e'>-- <fis fis'>--
<d d'>-- <e e'>-- <cis cis'>-- <d d'>--
<b' fis'>-- <cis gis'>-- <a e'>-- <b fis'>--
g4 8 a b d cis4 <<{r8 8 fis a cis b a gis}\\{fis,1}>>
fis'2 e d cis fis e d cis
c b a g c b a d\fermata \bar "||" \break
<g, g'> <a a'> <fis fis'> <g g'>
<e e'> <fis fis'> <d d'> <e e'>
<c c'> <d d'> <b b'> <c c'>
<a a'> <d d'> g4 a b d
<c'e>2 <b d> <a c> <g b>
<d c'> <e b'> <d a'> g
R1*4 g2 a fis\fermata g\fermata\fine
}


piano = \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

\include "utils/full.ly"
% \include "utils/tangoBase.ly"
