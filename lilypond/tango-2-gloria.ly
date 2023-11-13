% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

% \paper { indent = 0\cm}

\header {
  title = "Misatango"
  subtitle = "2 - Gloria"
  composer = "Martín Palmeri"
  tagline = ""

}

conductor_size = 18
individual_size = 20

\include "utils/macros.ly"


armure = {
\accidentalStyle modern-cautionary
\compressEmptyMeasures
\time 2/4
\tempo 4 = 86
\key c \major
}

pl = \markup {\dynamic p \italic legato}
pll = \markup {\dynamic p \italic legatissimo}
mpe = \markup {\dynamic mp \italic espressivo}
mfa = \markup {\dynamic mf \italic articolato}
mfll = \markup {\dynamic mf \italic legatissimo}
fa = \markup {\dynamic f \italic articolato}
ffp = \markup {\dynamic ff \italic pesante}


sop_music = {
  c'8.^\f 16~ 8 8 r des16 16 8 8 c8. 16~ 4
  r8 d16 16 8 8 c8. 16 8 8
  bes8 16 16 8 8 aes2 g4. \breathe
  g8 c8. 16 4 r8 des4 8
  c8 16 16 4 r8 d4 8 c8. 16 8 8 
  bes4. 8 aes4 4 g2 \bar "||" \key c \minor
  R2*18
  g8.--^\mf aes16--~ 8 g d'8.-- c16--~ 8 b c2 r
  c8.-- 16~-- 8 b d8.-- c16~ 4
  \breathe \key c \major
  8.^\f 16~ 8 8 des8. 16~ 16 8 16 
  c8. 16~ 8 8 \breathe d4.^\p^\< 8 f4^\f 4 \breathe 
  f8.-- e16--~ 8 d8 8.-- 16~ 4 \breathe
  4. b8 d8.-- c16~ 4 \breathe
    \override TextSpanner.bound-details.left.text = "rall."
  bes8.-- aes16~-- 8 f g2~\startTextSpan 2^\>\stopTextSpan
  \bar "||" \key c \minor
  \time 4/4 \tempo 4=74
  2.\! r4
  \break
  r2 r4^"Solo" g\(^\mpe aes1 2. 4 g16 f g4.~ 2 2.\) 
  \breathe
  g4\( aes1 2~ 8 8 bes16( aes) g( f) g( f) g4.~ 2~ 2\)
  \breathe
  4\( 4 c1~ 2.~ 8 bes16( aes) bes1 2.\)\breathe 
  aes8 g aes1~-- 2.~ 8 g16( f) g( f) g4.~ 2~ 2.
  \breathe
  4\( f1 2~ 8 8 g16( f) es( d) es( d) es4.~ 2~ 
  \break 2\) r4^"tutti"
  g\(^\mf aes1 2. 4 g16 f g4.~ 2 2.\) \breathe
  g4\( aes1 2~ 8 8 bes16( aes) g( f) g( f)
  g4.~ 2~ 1\)^"rit." \breathe
  c1~^"A tempo"\( 2.~ 8 bes16( aes) bes1~ 2.\)
  \breathe
  aes8\( g aes2. 4 bes2 aes g16( f) g4.~ 2~ 2.\)
  \breathe
  4\( f2 4 4 g(-- f es) d es16( d) es4.~^\> 2~ 2\)
  r4 c8\(^\pp 8 2 2 1^\> 1\)\fermata
  \bar "||" \key c \major \tempo 4 = 86 \time 2/4
  c'8.^\f 16 4 r8 des8 8 8 c8. 16~ 4 r8 d d d
  c8. 16 8 8 bes4 8 8 aes4. 8 g2 \breathe
  c des es8. 16~ 4 r8 e8 8 8 8. d16 8 c c4 bes8 8
  bes4. aes8 g2~^\p^\< 2~ 2~ 8^\f r r4 r2
  \bar "||" \key c \minor
  R2*10
  g8.-- aes16~-- 8 g d'8.-- c16~-- 8 b16 c
  c2 r c4.-- b8 d8.-- c16~ 4 \breathe
  \bar "||" \key c \major
  c2^\f\( des\) \breathe
  es\( e\) \breathe
  f4\(( e) e( d)\) \breathe d\( c\) \breathe
  c\(( b) \bar "||" c2\) \breathe
  \repeat unfold 3 {2\( 2\) \breathe}
  2\( 2~ 2~ 2~ 2~ 8\) r r4 r2 \fine
}	


sop_lyrics = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o __
  et in ter -- ra pax ho -- mi -- ni -- bus
  bo -- nae vo -- lun -- ta -- tis,
  lau -- da -- mus te, be -- ne -- di -- ci -- mus te,
  a -- do -- ra -- mus te, glo -- ri -- fi -- ca -- mus -- te.
  
  Do -- mi -- ne De -- _ _ us. o -- mni -- po -- tens. __ _
  
  Do -- mi -- ne Fi -- li __ u -- ni -- ge -- ni -- te
  Je -- su Chri -- ste
  Do -- mi -- ne De -- us, __ A -- gnus De -- i __
  Fi -- li -- us Pa -- tris.
  
  Qui tol -- lis pec -- ca -- ta mun -- di,
  Qui tol -- lis __  pec -- ca -- ta __ mun -- di, __
  mi -- se -- re -- re __ no -- bis,
  mi -- se -- re -- re no -- bis, __
  Qui tol -- lis __  pec -- ca -- ta __ mun -- di. __

  Qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis __ pec -- ca -- ta __ mun -- di, __
  sus -- ci -- pe __
  de -- pre -- ca -- ti -- o -- nem no -- stram, __
  qui tol -- lis pec -- ca -- ta mun -- di, __
  mi -- se -- re -- re no -- bis.
  
  Quo -- ni -- am, tu so -- lus sanc -- tus, __
  tu so -- lus Do -- mi -- nus 
  tu so -- lus Al -- tis -- si -- mus,
  Je -- su Chris -- te. __
  tu so -- lus Do -- mi -- nus 
  tu so -- lus Al -- tis -- si -- mus. __

  Cum san -- cto Spi -- _ ri -- _ tu,
  De -- i Pa -- tris. __

  A -- men, a -- men a -- men, __
  a -- men, a -- men, a -- men, 
  a -- men, a -- men, a -- men. __
}




sop = \new Staff \with {instrumentName="Soprano"
  shortInstrumentName ="S."} <<
  \soprano_style
  \armure
  \relative c' {\sop_music}
  \addlyrics {\sop_lyrics}
>>


alt_music = {
  g'8.^\f 16~ 8 8 r aes16 16 8 8 g8. 16~ 4
  r8 fis16 16 8 8 f8. 16 8 8
  f8 16 16 8 8 es4 c d4. \breathe
  g8 8. 16 4 r8 aes4 8
  g8 16 16 4 r8 fis4 8 f8. 16 8 8 4 4
  es c d2 \bar "||" \key c \minor \break
  R2*8 c8.--^\mf g'16--~8 es-- 
  es8.-- d16~ 8 c es8.-- d16~ 4~ 4 r8
  16 es f8.-- 16--~ 8 g bes8.-- aes16~ 8 f 
  
  aes8.-- g16~ 4~ 2 \breathe
  c,8.-- g'16--~ 8 es es8.-- d16--~8 c16 d
  es8.-- d16~ 8 c d4 r8 16 es 
  f4. g8 bes8.-- aes16--~ 8 f g2~ 2 
  \breathe \key c \major
  g8.^\f 16~ 8 8 aes8. 16~ 16 8 16
  g8. 16~ 8 8 \breathe fis4.^\p^\< 8 
  a4^\f 4 \breathe
  8.-- g16--~ 8 f f8.-- es16~ 4 \breathe
  d8. 16~ 8 f8  8.-- es16~ 4 \breathe
  f8.-- 16~-- 8 8 es2 f2^\>
  \bar "||" \key c \minor
  \time 4/4 \tempo 4=74
  es2.\! r4
  R1*20
  r2 r4 es\(^\mf f2( es) d( c4) d es16 d es4.~ 2 2.\)
  \breathe
  es4\( f4.( e8 f4 es) d8( c4) d16( es) g8( f4) es16( d)
  es( d) es4.~ 2~ 4\) \breathe c-- es-- g-- 2\breathe  
  f8\(( g4) f16( es) f1~ 2\) \breathe
  es8\(( f4) es16( d) es1\) \breathe
  es2\( d8( es4) g16 f es2 4( d) 4( c f es) d2.\) \breathe
  d4\( c2 4 4 es--( d c) b c16( b) c4.~ 2~ 2\) r4
  c8\(^\pp 8 bes2 2 aes1^\> g\)\fermata
  \bar "||" \key c \major \tempo 4 = 86 \time 2/4
  g'8.^\f 16 4 r8 aes8 8 8 g8. 16~ 4 r8 fis8 8 8
  f8. 16 8 8 4 8 8 es4 c d2 \breathe
  g aes g8. 16~ 4 r8 fis8 8 8 f8. 16 8 8 4 8 8
  
  es4 c d2~^\p^\< 2~ 2~ 8^\f r r4 r2
  \bar "||" \key c \minor \break
  c8.--^\mf g'16--~ 8 es8 8.-- d16~ 8 c es8.-- d16~ 4~ 4
  r8 16( es) f8.-- 16~-- 8 g bes8.-- aes16~ 8 f aes8.-- g16~ 4~ 2 \breathe

  c,8.-- g'16--~ 8 es8 8.-- d16~ 8 c es8.-- d16~ 4~ 4
  r8 16( es) f8.-- 16~-- 8 g bes8.-- aes16~ 8 f g8.-- g16~ 4~ 2 \breathe
  \bar "||" \key c \major
  g2^\f\( aes\) \breathe
  g\( fis\) \breathe
  a4\(( g) g( f)\) \breathe f\( es\) \breathe
  es\(( d) \bar "||" e2\) \breathe
  \repeat unfold 3 {f2\( es2\) \breathe}
  f2\( es2~ 2~ 2~ 2~ 8\) r r4 r2 \fine
}	


alt_lyrics = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o __
  et in ter -- ra pax ho -- mi -- ni -- bus
  bo -- nae vo -- lun -- ta -- _ tis,
  lau -- da -- mus te, be -- ne -- di -- ci -- mus te,
  a -- do -- ra -- mus te, glo -- ri -- fi -- ca -- mus -- te.

  Gra -- ti -- as a -- gi -- mus ti -- bi __
  pro -- pter ma -- gnam __ _ glo -- ri -- am
  tu -- am, __ Do -- mi -- ne De -- us, __ 
  Rex -- cae -- le -- _ _ stis,
  De -- us Pa -- ter o -- mni -- po -- tens. __
  
  Do -- mi -- ne Fi -- li __ u -- ni -- ge -- ni -- te
  Je -- su Chri -- ste
  Do -- mi -- ne De -- us, __ A -- gnus __ _  De -- i __
  Fi -- li -- us Pa -- _ tris.
  
  Qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis __ pec -- ca -- ta __ mun -- di, __
  sus -- _ ci -- pe, sus -- ci -- pe, __ sus -- ci -- pe,
  
  de -- pre -- ca -- ti -- o -- nem __ no -- stram,
  qui tol -- lis pec -- ca -- ta mun -- di, __
  mi -- se -- re -- re no -- bis.

  Quo -- ni -- am, tu so -- lus sanc -- tus, __
  tu so -- lus Do -- mi -- nus 
  tu so -- lus Al -- tis -- si -- mus,
  Je -- su Chris -- te. __
  tu so -- lus Do -- mi -- nus 
  tu so -- lus Al -- tis -- si -- mus. __

  Cum san -- cto Spi -- _ ri -- tu, __ _
  in __ glo -- ri -- a De -- _ i Pa -- tris. __
  Cum san -- cto Spi -- _ ri -- tu, __ _
  in __ glo -- ri -- a De -- _ i Pa -- tris. __
  
  A -- men, a -- men a -- men, __
  a -- men, a -- men, a -- men, 
  a -- men, a -- men, a -- men. __

}



alt = \new Staff \with {instrumentName="Alto"
  shortInstrumentName ="A."} <<
  \alto_style
  \armure
  \relative c' {\alt_music}
  \addlyrics {\alt_lyrics}
>>

ten_music = {
  e'8.^\f 16~ 8 8 r f16 16 8 bes,8 es8. 16~ 4
  r8 d16 16 8 a8 8. 16 8 8
  bes8 16 16 d8 8 c2 4 b8 \breathe
  g8 e'8. 16 4 r8 f4 bes,8
  es8 16 16 4 r8 d4 a8 8. 16 8 8 
  bes4 d c c c( b) \bar "||" \key c \minor
  R2*18
  g8.--^\mf aes16--~ 8 g d'8.-- c16--~8 g aes2 r
  es'8.-- 16--~ 8 d f8.-- es16~ 4 \breathe
  \key c \major
  e8.^\f 16~ 8 8 f8. 16~ 16 bes,8 16 
  es8. 16~ 8 8 \breathe
  d4.^\p^\< 8 c4^\f 4 \breathe
  bes8.-- 16--~ 8 8 aes8.-- 16~ 4 \breathe
  aes8. 16~ 4 8. g16~ 4 \breathe
  b8.-- d16~-- 8 b8 c2 des2^\>
  \bar "||" \key c \minor
  \time 4/4 \tempo 4=74
  c2.\! r4
  R1*20
  r2 r4 c\(^\mf 1 2. b4 d( c) b( bes) a( aes) g\)
  \breathe
  c\( 1 2. b4 d c2 bes8( aes) g4\) \breathe
  g-- c-- es-- es\breathe
  es\(( d) c d1~ 4\) \breathe
  d\(( c) bes c1\) \breathe
  c2\( 2 4 4 ces ces bes16( aes) bes4.~ 2~ 2.\) \breathe
  g4\( aes2 4 4 g2.-- aes4 g1 2\) r4 
  c8^\pp\( 8 bes2 2 aes1^\> g\)\fermata 
  \bar "||" \key c \major \tempo 4 = 86 \time 2/4
  e'8.^\f 16 4 r8 f f bes, es8. 16~ 4 r8 d d a
  a8. 16 8 8 bes4 d8 8 c4. 8 c4( b) \breathe
  e2 f4( bes,) c8. 16~ 4 r8 d d a8 8. 16 8 8 bes4 d8 8
  
  c4. 8 2~^\p^\< 2~ 2~ 8^\f r r4 r2
  \bar "||" \key c \minor
  R2*10  
  g8.-- aes16~-- 8 g d'8.-- c16~-- 8 g16 aes
  aes2 r es'4.-- d8 f8.-- es16~ 4 \breathe
  \bar "||" \key c \major
  e2^\f\( f4( bes,)\) \breathe c2\( 2\) \breathe
  c\( d\) \breathe c4\( f,\) \breathe
  g2\( \bar "||" 2\) \breathe
  aes\( g\) \breathe des'\( c\) \breathe
  aes\( g\) \breathe des'\( c2~ 2~ 2~ 2~ 8\) r r4 r2 \fine
  

}	


ten_lyrics = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o __
  et in ter -- ra pax ho -- mi -- ni -- bus
  bo -- nae vo -- lun -- ta -- tis, __ _
  lau -- da -- mus te, be -- ne -- di -- ci -- mus te,
  a -- do -- ra -- mus te, glo -- ri -- fi -- ca -- mus -- te. __
  
  Do -- mi -- ne De -- _ _ us. o -- mni -- po -- tens. __ _
  
  Do -- mi -- ne Fi -- li __ u -- ni -- ge -- ni -- te
  Je -- su Chri -- ste
  Do -- mi -- ne De -- us, __ A -- gnus De -- i __
  Fi -- li -- us Pa -- _ tris.
  
  Qui tol -- lis pec -- ca -- ta mun -- di,
  qui -- tol -- lis pec -- ca -- ta mun -- di,
  sus -- _ ci -- pe, sus -- ci -- pe, __ sus -- ci -pe,
  
  de -- pre -- ca -- ti -- o -- nem no -- stram, __
  qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis.
  
  Quo -- ni -- am, tu so -- lus sanc -- tus, __
  tu so -- lus Do -- mi -- nus 
  tu so -- lus Al -- tis -- si -- mus, __
  Je -- su __ Chris -- te. __
  tu so -- lus Do -- mi -- nus 
  tu so -- lus Al -- tis -- si -- mus. __

  Cum san -- cto Spi -- _ ri -- _ tu,
  De -- i Pa -- tris. __
  
  A -- men, __ a -- men a -- men,
  a -- men, a -- men, a -- men, 
  a -- men, a -- men, a -- men. __

}



ten = \new Staff \with {instrumentName="Tenor"
  shortInstrumentName ="T."} <<
  \alto_style
  \armure
  \relative c' {\ten_music}
  \addlyrics {\ten_lyrics}
>>


bass_music = {
  c8.^\f 16~ 8 8 r bes16 16 8 8 aes8. 16~ 4
  r8 a16 16 8 d,8 f8. 16 e8 8
  d8 16 16 bes8 8 c4 es g4. \breathe
  g8 c,8. 16 4 r8 bes4 8

  aes8 16 16 4 r8 a4 d8 f8. 16 e8 8 d4. bes8
  c4 es g2 \bar "||" \key c \minor \break
  R2*8 c,8.--^\mf g'16--~8 es-- 
  es8.-- d16~ 8 c es8.-- d16~ 4~ 4 r8
  16 es f8.-- 16--~ 8 g bes8.-- aes16~ 8 f 
  
  aes8.-- g16~ 4~ 2 \breathe
  c,8.-- g'16--~ 8 es es8.-- d16--~8 c16 d
  es8.-- d16~ 8 c d4 r8 16 es 
  f4. g8 bes8.-- aes16--~ 8 f g2~ 2 
  \breathe \key c \major
  c8.^\f 16~ 8 8 bes8. 16~ 16 8 16 aes8. 16~ 8 8 
  \breathe
  a4.^\p^\< 8 f4^\f e \breathe
  d8.-- 16--~ 8 bes c8.-- aes'16~ 8 g \breathe
  f8. 16~ 8 d es8.-- 16~ 4 \breathe
  d8.-- b16~-- 8 g8 c2~ 2^\>
  \bar "||" \key c \minor
  \time 4/4 \tempo 4=74
  2.\! r4
  R1*20
  r2 r4 c4\(^\mf f1 2 2 c c c c4\)
  \breathe
  c\( f1 2 2 c2 4 4 4\) \breathe
  es-- g-- c8-- bes aes1 \breathe
  aes2\( g4( f) g1\) \breathe 2\( f4( es)
  f2 2 2 2 es1 2\) \breathe
  2\( d2 4 4 g,2. 4 c1 2\)
  r4 c8^\pp\( 8 2 2 1^\> 1\)\fermata
  \bar "||" \key c \major \tempo 4 = 86 \time 2/4
  c'8.^\f 16 4 r8 bes8 8 8 aes8. 16~ 4 r8 a a d, 
  f8. 16 e8 8 d4 bes8 8 c4 es g2 \breathe
  c, bes aes8. 16~ 4 r8 a a d f8. 16 e8 8 d4 bes8 8
  
  c4 es g2~^\p^\< 2~ 2~ 8^\f r r4 r2
  \bar "||" \key c \minor
  c,8.--^\mf g'16--~ 8 es8 8.-- d16~ 8 c es8.-- d16~ 4~ 4
  r8 16( es) f8.-- 16~-- 8 g bes8.-- aes16~ 8 f aes8.-- g16~ 4~ 2 \breathe
  c,8.-- g'16--~ 8 es8 8.-- d16~ 8 c es8.-- d16~ 4~ 4
  r8 16( es) f8.-- 16~-- 8 g bes8.-- aes16~ 8 f g8.-- g16~ 4~ 2 \breathe  
  \bar "||" \key c \major
  c,2^\f\( bes\) \breathe aes\( a4( d)\) \breathe
  f2\( bes\) \breathe aes4\( 4\) \breathe
  g2\( \bar "||" c,\) \breathe
  des\( c\) \breathe bes\( c\) \breathe
  des\( c\) \breathe bes\( c2~2~2~2~8\) r r4 r2 \fine
}	


bass_lyrics = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o __
  et in ter -- ra pax ho -- mi -- ni -- bus
  bo -- nae vo -- lun -- ta -- _ tis,
  lau -- da -- mus te, be -- ne -- di -- ci -- mus te,
  a -- do -- ra -- mus te, glo -- ri -- fi -- ca -- mus -- te.
  
  Gra -- ti -- as a -- gi -- mus ti -- bi __
  pro -- pter ma -- gnam __ _ glo -- ri -- am
  tu -- am, __ Do -- mi -- ne De -- us, __ 
  Rex -- cae -- le -- _ _ stis,
  De -- us Pa -- ter o -- mni -- po -- tens. __
  
  Do -- mi -- ne Fi -- li __ u -- ni -- ge -- ni -- te
  Je -- su Chri -- ste
  Do -- mi -- ne De -- us, __ _ A -- gnus __ _ De -- i __
  Fi -- li -- us Pa -- tris.
  
  Qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis pec -- ca -- ta mun -- di,
  sus -- _ ci -- _ pe, sus -- ci -- pe, 
  de -- pre -- ca -- ti -- o -- nem no -- stram,
  qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis.

  Quo -- ni -- am, tu so -- lus sanc -- tus, __
  tu so -- lus Do -- mi -- nus 
  tu so -- lus Al -- tis -- si -- mus,
  Je -- su Chris -- te. __
  tu so -- lus Do -- mi -- nus 
  tu so -- lus Al -- tis -- si -- mus,
  
  Cum san -- cto Spi -- _ ri -- tu, __ _
  in __ glo -- ri -- a De -- _ i Pa -- tris. __
  Cum san -- cto Spi -- _ ri -- tu, __ _
  in __ glo -- ri -- a De -- _ i Pa -- tris. __
  
  A -- men, a -- men __ a -- men,
  a -- men, a -- men, a -- men, 
  a -- men, a -- men, a -- men. __

  
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
<e' g c>8->_\f r r8 8->
<des f aes des>-> r r4
<c es g c>8-> r r8 8->
<d fis a d>-> r r4 <c f a c>2
<bes d f bes>
r16_\< aes( es' aes) r c,( es aes)
r c,( d g) r b,( d g)

<e g c>8->_\f r r8 8->
<des f aes des>-> r r4
<c es g c>8-> r r8 8->
<d fis a d>-> r r4 <c f a c>2
<bes d f bes>
r16_\< aes( es' aes) r c,( es aes)
r c,( d g) r b,( d g)\!

\bar "||" \key c \minor

r16 <d es g>8.->_\mp 4--
r16 <d es fis>8.-> 4--
r16 <c f>8.-> <b f'>4--
r16 <d es g>8.-> 4--
r16 <d es g>8.-> 4--
r16 <d es fis>8.-> 4--
r16 <c f>8.-> <b f'>4--
r16 <d es g>8.-> 4--

r16 <d es g>8.-> 4--
r16 <d es fis>8.-> 4--
r16 <c f>8.-> <b f'>4--
r16 <c f>8.-> <b f'>4--
r16 <c f>8.-> 4--
r16 <c f>8.-> <b f'>4--
r16 <d es g>8.-> 4--
r2
d16 es g d es g d es d es fis d es fis d es
c d f c d f c d b d f b, d f b, d
c f c' c, f c' c, f b, f' b b, f' b b, f'
d es g d es g d es d es g c g' es d des
\bar "||" \key c \major
\change Staff = "lower" c,,16[(^\f g'] 
\change Staff = "upper" c e g c g e)

\change Staff = "lower" bes,16[( f'] 
\change Staff = "upper" bes des f bes f des)

\change Staff = "lower" aes,16[( es'] 
\change Staff = "upper" g c es g es c)

\change Staff = "lower" a,16[(^\p^\< d] 
\change Staff = "upper" a' d fis a fis d)\!

r16 a^\f c f r a, c f
r f bes r f bes r <d, bes'>
r es aes r c, es r <c es>
r aes c r aes c r <aes c>
r g d' r g, c r <g c>
r g b r g d' r <b f'>
es\startTextSpan c g es' c g es' c
f_ \> des aes f' des aes f' des\stopTextSpan
\bar "||" \key c \minor \tempo 4 = 74 \time 4/4
<g, c es g>1~_\p 1
<aes c f>~ 1 <g c es g>~ 1
<aes c f>~ 1 <g c es g>~ 1
r8 c( g' c g c, g' c,16 g')
r8 c,( f c' f,16 c f4 c8)
r8 bes( f' bes f bes, f' bes,16 f')
r8 bes,( es bes' es,16 bes es4 bes8)
r8 aes( es' aes es16 aes, es'4 aes,8)
r aes( d aes' d,16 aes d4.)
r8 g,( bes d d g g bes
\tuplet 3/2 4 {d c bes g es d c bes g} 
c16 bes aes g)
r8 f( c' f c f, c' f,16 c')
r8 f,( c' f b,16 f b4 f8)
r8 g( c es c g c g16 c)
r8 g(_\< c es c es g c)
<aes, c f>1~_\mf 1
<g c es g>1~ 1 <aes c f>1~ 1
<g c es g>1~ 1^"rit."
<c g'c>^"a tempo" <c f c'> <bes f' bes> < bes es bes'>
<aes es'aes> <aes d aes'> <g d'g> <g c g'> <f c'f> 
<es'g>4 <d f> <c es> <b d> <c es>1 r1 r1 r1 r1
\bar "||" \key c \major \tempo 4 = 86 \time 2/4
<e g c>8->_\f r r8 8-> <des f aes des>8-> r r4
<c es g c>8-> r r8 8-> <d fis a d>8-> r r4
<c f a c>2( <bes d f bes>)
r16 aes( es'aes) r c,( es aes) r c,( d g) r b,( d g)
<e g c>8-> r r8 8-> <des f aes des>8-> r r4
<c es g c>8-> r r8 8-> <d fis a d>8-> r r4
<c f a c>2( <bes d f bes>)
r16 aes( es'aes) r c,( es aes)
r_\p_\< <c, d f aes>8.-> 4-- r16 8.-> 4-- r16 8.-> 4->
<b d f g>8->_\f r r4 r2
\bar "||" \key c \minor
r16 <d es g>8.->_\mf 4-- r16 <d es fis>8.-> 4--
r16 <c f>8.-> <b f'>4--
r16 <c f>8.-> <b f'>4--
r16 <c f>8.-> 4--
r16 <c f>8.-> <b f'>4--
r16 <d es g>8.-> 4-- r2
d16 es g d es g d es d es fis d es fis d es
c d f c d f c d b d f b, d f b, d
c f c' c, f c' c, f b, f' b b, f' b b, f'
d es g d es g d es d es g c g' es d des
\bar "||" \key c \major
\change Staff = "lower" c,,16[(^\f g'] 
\change Staff = "upper" c e g c g e)

\change Staff = "lower" bes,16[( f'] 
\change Staff = "upper" bes des f bes f des)

\change Staff = "lower" aes,16[( es'] 
\change Staff = "upper" g c es g es c)

\change Staff = "lower" a,16[( d] 
\change Staff = "upper" a' d fis a fis d)

r16 a( c f) r a,( c f) r bes,( f'bes) r d,( f bes)
r aes,( es'aes) r c,( es aes)
r c,( es g) r b,( d g) \bar "||"
r16 <b, d e g>8.-> 4--
r16 <c des f>8.-> 4--
r16 <b d e g>8.-> 4--
r16 <c des f>8.-> 4--
r16 <b d e g>8.-> 4--
r16 <c des f>8.-> 4--
r16 <b d e g>8.-> 4--
r16 <c des f>8.-> 4--
r16 <b d e g>8.-> 4--
r16 <b d e g>8.-> 4--
r16 g'' fis g a g fis g
r g, fis g gis a ais b
<c g e>8 r r4 <e g c>8-> r r4 \fine
}



lower = \relative c {
\armure
\lpiano_syle
<c g' c>8-> r r8 8->
<bes f' bes>-> r r4
<aes es' aes>8-> r r8 8->
<a d a'>8-> r r4
<f c' f>4. f8
bes d f d c4 es g g, 

<c g' c>8-> r r8 8->
<bes f' bes>-> r r4
<aes es' aes>8-> r r8 8->
<a d a'>8-> r r4
<f c' f>4. f8
bes d f d c4 es g g, 

\bar "||" \key c \minor
c8. 16~-> 8 g->
d'8. 16~-> 8 d,->
g8. aes16~-> 8 g->
c8. 16~-> 8 g->
c8. 16~-> 8 g->
d'8. 16~-> 8 d,->
g8. aes16~-> 8 g->
c8. 16~-> 8 g->

c8. 16~-> 8 g->
d'8. 16~-> 8 d,->
g8. 16~-> 8 d->
g8. 16~-> 8 fis16-> g
aes8. 16~-> 8 d,->
g8. 16~-> 8 8->
c8. 16~-> 8 g->
c16 aes' g fis g es d des
c8. 16~-> 8 g->
d'8. 16~-> 8 d,->
g8. 16~-> 8 d->
g8. 16~-> 8 fis16-> g
aes8. 16~-> 8 d,->
g8. 16~-> 8 g,8->
c8. 16~-> 8 g->
c8. 16~-> 8 g->

\bar "||" \key c \major

s2 s2 s2 s2

f''4 e
d8. 16~ 8 bes
c8. aes'16~ 8 g
f8. 16~ 8 d
es8. 16~ 8 c
d8. b16~ 8 g c2~ 2 
\bar "||" \key c \minor \time 4/4 \tempo 4=74
<<{1~ 1}\\{c,4 4 4 4 4 4 8 b c g'}>>
<<{f'1~ 1}\\{f,4 4 4 4 4 4 4 4}>>
<<{c'1~ 1}\\{c,4 4 4 4 4 4 8 b c g'}>>
<<{f'1~ 1}\\{f,4 4 4 4 4 4 4 4}>>
<<{c'1~ 1}\\{c,4 4 4 g c c c8 g' c bes}>>
<<{r4. aes'4. 4}\\{aes,1}>>
<<{r4. aes'4. 4}\\{aes,1}>>
<<{r4. g'4. 4}\\{g,1}>>
<<{r4. g'4. 4}\\{g,1}>>
<<{r4. f'4. 4}\\{f,1}>>
<<{r4. f'4. r4}\\{f,2~ 8 bes f bes,}>>
<<{r4. es'4. 4}\\{es,1}>>
<es es'>1
<<{r4. d'4. 4}\\{d,1}>>
<<{r4. d'4. 4}\\{g,1}>>
<<{r4. c4. 4}\\{c,1}>>
<<{r4. c'4. 4}\\{c,1}>>
<f f'>1~ 1 <c c'>1~ 1 <f f'>1~ 1
<c c'>1~ 1 <aes'aes'>1 1 <g g'>1 1 

<f f'>1 1 <es es'>1 1 <d d'> <g, g'> <c c'> r1
r2 r4 8^\p 8 1~ 1\fermata
\bar "||" \key c \major \tempo 4 = 86 \time 2/4
<c' g'c>8-> r r8 8-> <bes f'bes>-> r r4
<aes es'aes>8-> r r8 8-> <a d a'>-> r r4
<f c'f>4. f8 bes d f bes, c4 es g g,
<c g'c>8-> r r8 8-> <bes f'bes>-> r r4
<aes es'aes>8-> r r8 8-> <a d a'>-> r r4
<f c'f>4. f8 bes d f bes, c4 es
<g g,>8. 16~-> 8 d-> <g g,>8. 16~-> 8 d-> <g g,>8. 16~-> 8 d->
<g g,>-> r r4 r16 b,^\f aes' g f es d g,
\bar "||" \key c \minor
c8. 16~ 8 g d'8. 16~ 8 d, g8. 16~ 8 d g8. 16~ 8 fis16 g
aes8. 16~ 8 d, g8. 16~ 8 8 c8. 16~ 8 g
c16 aes'g fis g es d des
c8. 16~ 8 g d'8. 16~ 8 d, g8. 16~ 8 d g8. 16~ 8 fis16 g
aes8. 16~ 8 d, g8. 16~ 8 g,8 c8. 16~ 8 g c8. 16~ 8 g
\bar "||" \key c \major

s2 s2 s2 s2

f''4 e d bes c es g g, \bar "||"
c8. 16~-> 8 g-> des'8. 16~-> 8 g,->
c8. 16~-> 8 g-> bes8. 16~-> 8 g->
c8. 16~-> 8 g-> des'8. 16~-> 8 g,->
c8. 16~-> 8 g-> bes8. 16~-> 8 g->
c8. 16~-> 8 g-> c8. 16~-> 8 g->
r16 g'fis g a g fis g r g fis f e es d des
c8 r g4-> <c c,>8-> r r4 \fine
}

piano = \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

\include "utils/full.ly"
% \include "utils/tangoBase.ly"
