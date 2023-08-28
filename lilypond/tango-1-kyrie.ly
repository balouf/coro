% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

% \paper { indent = 0\cm}

\header {
  title = "Misatango"
  subtitle = "1 - Kyrie"
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
\tempo 4 = 90
\key c \minor
}

pl = \markup {\dynamic p \italic legato}
pll = \markup {\dynamic p \italic legatissimo}
mpe = \markup {\dynamic mp \italic espressivo}
mfa = \markup {\dynamic mf \italic articolato}
mfll = \markup {\dynamic mf \italic legatissimo}
fa = \markup {\dynamic f \italic articolato}
ffp = \markup {\dynamic ff \italic pesante}


sop_music = {
  c'4^\ffp 8 4. 4 d4 8 4. r4
  f4 8 4. d4 es c8 4. r4
  g4^\pl 8 4 c8 g es fis4 8 4. r4
  f4 8 4. 4 es4 8 4. \breathe
  f8( g) aes4^"rit."\< es'-- d-- c-- c2.\!\fermata r4 \textEndMark "a tempo" \bar "||"
  R1*16 \break
  r8\f g4-> f16( g) aes4. g16( aes)
  bes aes bes4 g8-. es'4.-- d16 c
  d8 g, c4~-- 8 bes16 aes bes4
  r8 g4-> f16( g) aes4. bes16( c)
  bes aes g4.~ 2
  r8 aes4 g16( aes) bes4. c16( d)
  c bes c4.~ 2
  r8 aes4 bes16( c) bes4. c16( d)
  \times 2/3 {f4 es4 8 b} \times 2/3 {d4 c4 8 bes}
  r8 aes4 g16( aes) bes4. c16( d)
  c bes c4. \breathe bes4 b
  c bes8( aes) g16( fis bes4) aes8
  g4.(^\< f16 g) aes2\!
  r2 r8 c4->^\f 8 2 r8 4-> 8->~ 
  8 8 4-> r8 4-> 8 2 r8 4-> 8->~
  8 8 4 \breathe d8.-> 16-> 8-> es->
  f4-> g-> r8 4->^\ff 8
  2 r8 4-> 8->~ 8 8 4-> r8 4-> 8
  2 r8 4-> 8->~ 8 8 4 r8 b,4^\mp d8 \bar "||"
  c2 r8 es4 8~ 8 c d4 r8 f4 d8 es2. d4 c2 r2 R1*3 \bar "||"
  R1*4 \bar "||" R1*14 \break
  c2\mf\( 4. d8 es4 c\) r8 es4\( d16 es
  c2.~ 8 d es2 d\) \breathe
  c2\( 4. d8 es4 c\) r8 es4\( d16 es
  c2.~ 8 d bes4 4\) r8 des4--\( c16 bes^\>
  aes4 4\)\! r8 ces4--\( bes16^\> aes g2\)\!
  r8 bes4\( aes16 g f2~^\< 4. g16 aes g1\)\! \breathe \bar "||"
  c4.->^\f 8->~ 4. d8 es4.-- c8 r8 es4-> d16 es 
  c2 r8 es4-> d8 des4.-- c8~ 2 \breathe
  c4.-> 8->~ 4. d8 es4.--^\< c8 r8 es4-> d16 es\!
  c2 r8 es4-> d8 d2.--^\ff 4 \breathe r1
  r4 c\(^\p 4. d8 c2 bes\) r4 bes4\( 4. c8 bes2 aes4\) \breathe
  es\( bes'4. aes8~ 8\) \breathe des4->^\mf c8
  b4. g8~ 8 fis4->( g8) aes2 g R1*9 \bar "||"
  R1*14 r2 r4 r8 g^\mp es'2 d c1 \breathe
  f8.-- 16-. e8-. 8-. es4-- d-- \breathe 
  d8.-- 16-. d8-. 8-. es4-- g8-_ 8-. fis2 f es2.~ 8 r
  c8.--^\f 16-. b8-. 8-. bes4-- a-- \breathe
  aes8.-- 16-. g8-. 8-. f4-- bes-- \breathe
  es8.-- 16-. d8-. 8-. c4-- bes8-- 8-.
  c1~ 2. b4 \breathe
  g'8.-- 16-. fis8-. 8-. f4-- es-- \breathe
  es8.-- 16-. d8-. 8-. c4-- b-- \breathe
  bes8.-- 16-. a8-. 8-. aes4-- g8-- 8-. fis2 f e2.~ 8 r
  R1*3 r4 r8 es'^\f d2 c1 \breathe f8.-- 16-. e8-. 8-. es4-- d-- \breathe
  d8.-- 16-. c8-. 8-. es4-- g8-- 8-. fis2 f es4 r r2
  R1*3
  g,8.^\mfll 16 aes8 8 a4 bes^\< \breathe
  b8. 16 c8 8 des4 b \breathe
  c4. 8 4 b\! \breathe
  r8 c4^\fa\! b16 c d4. c16 d es d es4 c8 aes'4. g16 f
  g8 c, f4~ 8 es16 d es4
  r8\override TextSpanner.bound-details.left.text = "rall."
  c4->\startTextSpan b16 c d4. es16 f es d c4.~ 4.\stopTextSpan r8
  \textMark "a tempo" 
  r8 c4->^\ff 8 2 r8 4-> 8~ 8 8 4 
  r8 4-> 8 2 r8 4-> 8~ 8 8 4
  r8 g4^\pll 8 2 r8 fis4 8~ 8 8 4 r8 f4 8 4 4 es2 2~ 2. \breathe
  f8\startTextSpan( g) aes4^\< es'-- d-- c--\stopTextSpan b1^\ff\fermata\textEndMark "attaca Gloria"
  \fine
}	


sop_lyrics = \lyricmode {
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e _ -- _ le -- i son,
  Ky -- ri -- e e -- le -- i son,
  e -- le _ -- _ i -- son.
  
  Ky -- ri -- e e --
  le -- i -- son,
  e -- le _ _ -- _ _ _ _ i -- son,
  Ky -- ri -- e e -- le -- i son. __
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i -- son, e -- le -- i -- son, _

  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son. __ _
  
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son.
  Ky -- ri -- e e -- le -- i -- son.
  
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- rie~e -- le -- i -- son.
  
  Chri -- ste e -- lei -- son, e -- le -- i -- son, __
  e -- lei -- son, 
  Chri -- ste e -- lei -- son, e -- le -- i -- son, __ 
  e -- lei -- son,
  Chri -- ste e -- lei -- son, e -- le -- i -- son, 
  Chri -- ste e -- le -- _ i -- son.
  Chri -- ste e -- lei -- son, e -- le -- i -- son, e -- _ lei -- son,
  Chri -- ste e -- lei -- son, e -- le -- i -- son, e -- _ lei -- son.
  
  Chri -- ste e -- lei -- son, 
  Chri -- ste e -- lei -- son, e -- lei -- son,
  Chri -- ste~e -- lei -- son, e -- lei -- son.
  
  e -- le -- i -- son.
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son, e -- le -- i -- son. __
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- lei -- son.
  
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son, e -- le -- i -- son. __
  
  e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- le -- i son.
  
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- rie~e -- lei -- son,
  Ky -- ri -- _  e e -- _ le -- i -- son,
  e -- le -- _ _ _ _ _ _ i -- son,
  Ky -- ri -- _ e e -- _ le -- i -- son. __
  
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- lei -- son, __
  e -- le -- _ _ i -- son.
}


sop = \new Staff \with {instrumentName="Soprano"
  shortInstrumentName ="S."} <<
  \soprano_style
  \armure
  \relative c' {\sop_music}
  \addlyrics {\sop_lyrics}
>>


alt_music = {
  es4^\ffp 8 4. 4 f4 8 4. r4
  aes4 8 4. f4 d' g,8 4. r4
  es4^\pl 8 4. c4 d4 8 4. r4
  des4 8 4. 4 c4 8 4. \breathe
  d8( es) c4^"rit."\< ges'-- f-- es-- <d aes'>2.\!\fermata r4 \bar "||"
  R1*12 \break
  r8\mf c4-> b16( c) d4. c16( d)
  es^\cresc d es4 c8-. aes'4.-- g16 f
  g8 c, f4--~ 8 es16 d es4
  r8 c4-> b16( c) d4. es16( f)
  es d c4. r8 d4-> 8
  es2 r8 fis4-> f8~ 8 es8 4 r8 d4-> 8
  es2 r8 d4-> 8~ 8 c8 4~ 2
  r8 es4 8 aes g fis4
  r8 f4 es16( d) des8 8 c e
  g2. aes4 4 g4 2
  r8 es4 8 aes g fis4
  r8 f4-> 8-. 4-- e--
  es2. d4 2^\< f\!
  r8 c4->^\f b16( c) d4. c16( d)
  es d es4 c8-. aes'4.-- g16 f
  g8 c, f4~ 8 es16 d es4
  r8 c4-> b16( c) d4. es16( f)
  es d c4. r2
  r8 g'4^\ff f16( g) aes4. g16( aes)
  bes aes bes4 g8 es'4. d16 c
  d8 g, c bes16 c bes aes bes4.
  r8 g4 f16( g) aes4. bes16( c)
  bes aes g4. r8 g4^\mp f8 \bar "||"
  es2 r8 g4 8~ 8 fis8 4 r8 g4 bes8
  a2 aes g r R1*3 \bar "||"
  R1*4 \bar "||" R1*14
  r4 c\mf\( bes aes4 2 g\)
  r4 bes\( aes g4 2 fis4 f\) \breathe es1\( 1\)
  r4 g4\(^\< 4--^\> fis\)\! r8 a4\( g16^\> f a4 g\)\!
  r8 g4\( f16^\> es g4 f\)\! r8 f4\( d16^\> f es4 8\)\! d\(
  c2^\< d4 c b1\)\! \breathe \bar "||"
  R1*2 g'4.->^\f 8->~ 4. 8 aes4.-- g8 r bes-> aes-> g->
  aes4.-- 8 r c-> bes-> aes-> bes4.-- 8~ 2 \breathe
  g4.-> 8->~ 4. 8 fis2.-- g4 \breathe
  g2~\(^\mf 8 c,4 e16 g g2 f\) \breathe
  f~\( 8 bes,4 d16 f f2 es\) \breathe
  es2~\( 8 aes,4 c16 es es4. des8~ 8\) \breathe
  aes'4-> g8 f4. d8~ 8 cis4->( d8) f2 2
  R1*9 \bar "||" 
  R1*14 g8.--^\mp 16-. f8-. 8-. es4-- des-- \breathe
  c8.-- 16-. 8-. 8-. 4-- b-- \breathe
  c'8.-- 16-. 8-. 8-. bes4-- a-- \breathe
  aes8.-- 16-. g8-. 8-. f4-- bes,-- \breathe
  es8.-- 16-. d8-. 8-. c4-- bes8-- bes'-. a2 aes g2.~ 8 r
  r c,4^\f b16 c d4. c16 d es d es4 c8 aes'4. g16 f g8 c, f4~ 8 es16 d es4
  r8 c4 b16 c d4. es16 f g aes g4.~ 2 \breathe
  r8 g4 fis16 g aes4. g16 aes bes aes bes4 c,8 aes'4. g16 f 
  g8 c, f4~ 8 es16 d es4 r8 d4 es16( d) des4. es16( des) c bes c4.~ 4~ 8 r8

  r8 c4->^\mfa b16( c) d8 c16( d) es d es8
  r8 f4-> e16( f) g8 f16( g) aes g aes8 \breathe
  g8 bes16( aes) g8 bes16( aes) g f g8 r16 g aes bes c8 g16 c c2 b4 \breathe 
  
  c8.--^\f 16-. b8-. 8-. bes4-- a-- \breathe
  aes8.-- 16-. g8-. 8-. f4-- bes,-- \breathe
  es8.-- 16-. d8-. 8-. c4-- bes8-- bes'8-. a2 aes g4 r r2
  
  r8 c,4^\pll b16 c d4. c16^\< d es d es4 c8 aes'4. g16 f
  g8 c, f4~ 8 es16 d es4\! \breathe 
  c8.^\mfll 16 8 8 4 4^\< \breathe
  f8. 16 8 8 4 es \breathe
  aes4. 8 4 g\! \breathe
  c8.--^\fa 16-. b8-. 8-. bes4-- a-- \breathe
  aes8.-- 16-. g8-. 8-. aes4-- 4-- \breathe
  bes8.-- g16-. aes8-. f-. g4-- 4--
  r8 es4-> d16 es f4. g16 aes g f es4.~ 4. r8

  r8 es4->^\ff 8 2 r8 f4-> 8~ 8 8 4 
  r8 aes4-> 8 2 r8 es4-> 8~ 8 8 4
  r8 es4^\pll 8 2 r8 d4 8~ 8 8 4 r8 des4 8 4 4 c2 2~ 2. \breathe
  d8( es) c4^\< ges'-- f-- es-- d1^\ff\fermata
  \fine

}	


alt_lyrics = \lyricmode {
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  e -- le _ -- _ i -- son.
  
  Ky -- ri -- e e --
  le -- i -- son,
  e -- le _ _ -- _ _ _ _ i -- son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son. __
  Ky -- rie~e -- le -- i -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- rie~e -- le -- i -- son,
  Ky -- rie~e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son. __ _
  
  Ky -- ri -- e e -- le -- i son,
  e -- le -- _ _ _ _ _ _ i -- son,
  Ky -- ri -- e e -- le -- i son.
  
  Ky -- ri -- e e -- le -- i son,
  e -- le -- _ _ _ _ _ _ _ _ i -- son,
  Ky -- ri -- e e -- le -- i son.

  Ky -- ri -- e e -- le -- i -- son,
  Ky -- rie~e -- le -- i -- son.
  
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- _ son, 
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son, e -- le -- _ i -- son.
  
  Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son.
  
  Chri -- ste __ e -- lei -- son.
  Chri -- _ ste e -- lei -- son, Chri -- _ ste e -- lei -- son, Chri -- _ ste e -- lei -- son,_
  Chri -- ste~e -- lei -- son,_ e -- lei -- son. 
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son, e -- le -- i -- son. __
  Ky -- ri -- _ e e -- _ le -- i -- son, e -- le -- _ _ _ _ _ _ i -- son.
  Ky -- ri -- _ e e -- _ le -- i -- son. __
  Ky -- ri -- _ e e -- _ le -- i -- son, e -- le -- _ _ _ _ _ _ i -- son.
  Ky -- ri -- e e -- le -- i -- son. __
  
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e~e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son, e -- le -- i son.
  
  Ky -- ri -- _ e e -- _ le -- i -- son, e -- le -- _ _ _ _ _ _ i son.
  
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- rie~e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- _ e e -- _ le -- i -- son. __

  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- lei -- son, __
  e -- le -- _ _ i -- son.
}



alt = \new Staff \with {instrumentName="Alto"
  shortInstrumentName ="A."} <<
  \alto_style
  \armure
  \relative c' {\alt_music}
  \addlyrics {\alt_lyrics}
>>

ten_music = {
  g'4^\ffp 8 4. 4 aes4 8 4. r4
  d4 8 4. aes4 g es'8 4. r4
  g,4^\pl 8 4. 4 a4 8 4. r4
  aes4 8 4. 4 g4 8 4. \breathe
  4 ges2^"rit."\< aes4-- fis g2.\!\fermata r4 \bar "||"
  R1*8 \break r8\mf g4-> f16( g) aes4. g16( aes)
  bes aes bes4 g8-. es'4.-- d16 c
  d8 g, c4~-- 8 bes16 aes bes4
  r8 g4-> f16( g) aes4. bes16( c) bes aes g4. r8 aes4-> 8
  g2^\cresc r8 f4-> d'8~ 8 c8 4 r8 bes4-> a8
  aes2 r8 fis4-> aes8~ 8 g8 4 r8 f4-> 8
  g2 r8 a4-> aes8~ 8 g8 4 r8 f4-> 8 
  g2 r8 fis4-> aes8~ 8 g8 4~ 2
  r8 c4 d16 c bes4 aes
  r8 d4 c16( b) c8 bes16 a bes8 aes16( g)
  r8 c4 d16 es d4. es16( d) des2 c4 des
  r8 c4 d16\( c\) bes4 aes
  r8 bes4-> 8-. 4-- a--
  aes2. ces4 bes4.(^\< a16 bes) b2\!
  r2 r8 c4->^\f 8 2 r8 4-> 8->~ 
  8 8 4-> r8 4-> 8 2 r8 4-> 8->~
  8 8 4 \breathe d8.-> 16-> 8-> es->
  f4-> g-> r8 4->^\ff 8
  2 r8 4-> 8->~ 8 8 4-> r8 4-> 8
  2 r8 4-> 8->~ 8 8 4 r2 \bar "||"
  r8 g,4^\mp bes8 aes2 r8 4 8~ 8 c bes4
  r8 c4 8 4 b c2 r R1*3 \bar "||"
  R1*4 \bar "||" R1*2 \break
  c2^\mpe\( 4.^\< d8 es4--^\> c\)\! r8 es4\( d16 es
  c2.~^\< 8 d es2--^\> d\)\! \breathe 
  c2\( 4.^\< d8 es4-- c\)\! 
  r8 es4\(^\> d16 es c2.~ 8^\< d bes4-- bes\)\!
  r8 des4\( c16 bes aes4--^\> aes\)\!
  r8 ces4--\(^\> bes16 aes g2\)\!
  r8 bes4--\(^\> aes16 g f2~ 4.^\< g16 aes g1\)\!
  R1*5
  r4 g4\(\mf aes bes c2 2\) \breathe 
  f--^\> e4\! r8 8-. es2--^\> d\! \breathe 
  2 c4 r8 8-. aes1^\< g\! \breathe \bar"||"
  R1*2
  r2 r8 c->^\f c-> c-> bes4.-- 4. r4
  es4.-> 4.-> 4 d4.-- 8~ 8 \breathe 8-> es-> f->
  es4.-- 4. 4 4.-- 4. d4 \breathe
  r4 c4^\p\( 4 4 2 2\) \breathe
  r4 bes4\( 4 4 2 2\) \breathe
  r4 aes4\( 4 4 4. 8~ 8\) \breathe
  f'4-> es8 d4. b8~ 8 ais4->( b8) c2 b R1*9 \bar "||"
  R1*13
  f'8.--^\mp 16-. e8-. 8-. es4-- d-- \breathe
  d8.-- 16-. c8-. 8-. es4-- g8-- 8-. fis2 f es1 \breathe r1
  g,8.-- 16-. aes8-. 8-. es'4-- des-- \breathe
  c8.-- 16-. 8-. 8-. 4-- b-- c2.~ 8 r 
  r c4^\f b16 c d4. c16 d es d es4 c8 es4. d16 c d8 g, c4~ 8 bes16 aes bes4
  r8 g4 8 fis4 r8 a aes2 g \breathe r r8 c4-> 8-. 2
  r8 d4-> 8-. es2 r8 c4-> bes8-. a2 r8 bes4-> aes8 g2.~ 8 r
  R1*3 r4 r8 c^\f f2 es1 \breathe r
  r2 r4 r8 g, es'2 d c4 r r2
  g8.^\pll 16 aes8 8 a4 bes \breathe
  b8. 16 c8 8 des4 b \breathe
  c4.^\p^\< 8 4 b\! \breathe
  r8 c4^\mfll b16 c d4.^\< c16 d es d es4. r8 c des4~ 
  8 c16 bes c8 aes c b16 c d4\! \breathe
  r8 c4^\fa b16 c d4. c16 d
  es d es4 c8 es4. d16 c d8 g, c4~ 8 bes16 aes bes4
  r8 g4-> fis16 g c4 b c2.~ 8 r
  
  r8 g4->^\ff 8 2 r8 aes4-> 8~ 8 8 4 
  r8 d4-> 8 2 r8 4-> 8~ 8 g,8 4
  r8 4^\pll 8 2 r8 a4 8~ 8 8 4 r8 aes4 8 4 4 g2 2~ 2. \breathe
  4 ges2^\< aes4-- fis-- g1^\ff\fermata
  \fine

}	


ten_lyrics = \lyricmode {
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  e -- le  _ --  i -- son.
  
  Ky -- ri -- e e --
  le -- i -- son,
  e -- le _ _ -- _ _ _ _ i -- son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son. __
  Ky -- rie e -- lei -- son,
  Ky -- ri -- e e _ -- lei son,
  Ky -- ri _ -- e e -- lei -- son, __ _
  Ky -- rie e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son. __ _
  
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son.
  Ky -- ri -- e e -- le -- i -- son.
  
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- rie~e -- le -- i -- son.
  
  Chri -- ste e -- lei -- son,
  e -- le -- i -- son, __ e -- lei -- son,
  Chri -- ste e -- lei -- son,
  e -- le -- i -- son, __ e -- lei -- son,
  Chri -- ste e -- lei -- son, e -- le -- i -- son,
  Chri -- ste e -- le -- - i son.
  
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son.
  
  Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son,
  e -- le -- i -- son. Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son,
  Chri -- ste~e -- lei -- son, e -- lei -- son.
  
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son, e -- le -- i -- son.
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- le -- i -- son. __
  Ky -- ri -- _ e e -- _ le -- i -- son, e -- le -- _ _ _ _ _ _ i -- son.
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e Ky -- ri -- e Ky -- ri -- e Ky -- ri -- e. __
  e -- lei -- son.
  e -- le -- i -- son.
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- rie~e -- lei -- son.
  
  Ky -- ri -- _ e e -- _ le -- i -- son,
  e -- le -- _ _ _ _ _ _ i -- son,
  Ky -- ri -- _ e e -- _ le -- i son,
  e -- le -- _ _ _ _ _ _ i -- son,
  Ky -- rie e -- le -- i -- son. __
  
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- lei -- son, __
  e -- le -- _ i -- son.  
}



ten = \new Staff \with {instrumentName="Tenor"
  shortInstrumentName ="T."} <<
  \alto_style
  \armure
  \relative c' {\ten_music}
  \addlyrics {\ten_lyrics}
>>


bass_music = {
  c,4^\ffp 8 4. 4 4 8 4. r4
  b4 8 4. 4 c4 8 4. r4
  4^\pl 8 4. 4 4 8 4. r4
  4 8 4. 4 4 8 4. \breathe
  bes4 aes2.^"rit."\< 4-- g2.\!\fermata r4 \bar "||"
  R1*4
  r8^\mfa c4-> b16( c) d4. c16( d) es d es4 
  c8-. aes'4.-- g16 f g8 c, f4~-- 8 es16 d es4
  r8\mf c4-> b16( c) d4. es16( f) es d c4.
  r8 4-> 8 
  2 r8 4-> 8~ 8 8 4 r8 4-> 8
  2 r8 4-> 8~ 8 8 4 r8 4-> 8
  2^\cresc r8 4-> 8~ 8 8 4 r8 4-> 8
  2 r8 4-> 8~ 8 8 4 r8 4-> 8
  2 r8 4-> 8~ 8 8 4 r8 4-> 8
  2 r8 4-> 8~ 8 8 bes'4-- aes-- g-- \breathe
  f es d bes g' f e c \breathe
  f f bes,4 4 es2-- e-- \breathe
  f4 es d bes r8 g'4-> 8-. 4-- fis--
  f2 bes, es^\< d\!
  r8 c4->^\f b16( c) d4. c16( d)
  es d es4 c8-. aes'4.-- g16 f
  g8 c, f4~ 8 es16 d es4
  r8 c4-> b16( c) d4. es16( f)
  es d c4. r2
  r8 g'4^\ff f16( g) aes4. g16( aes)
  bes aes bes4 g8 es'4. d16 c
  d8 g, c bes16 c bes aes bes4.
  r8 g4 f16( g) aes4. bes16( c)
  bes aes g4. r2 \bar "||"
  r8 c,4^\mp 8 f2 r8 bes,4 8~ 8 es8 4
  r8 fis4 8 f4 4 es2 r R1*3 \bar "||"
  R1*4 \bar "||" R1*18
  r4 es\(\mf f g4 2 4\) \breathe f\( es2 d\) \breathe
  g2--^\> bes4\! r8 8-. f2--^\> aes\! \breathe
  es2 aes4 r8 8-. d,1^\< g\! \breathe \bar "||"
  r2 r8 c,->^\f c-> c-> d4.-- 4. r4
  es4.-> 4.-> 4 e4.-- 8~ 8 \breathe c-> c-> c-> f4.-- 4. r4 g4.-> 4.-> 4
  aes4.-- 8~ 8 \breathe 8-> bes-> c-> d4.-- c b4 \breathe
  r4 bes\(^\p 4 4 a2 2\) \breathe r4 aes4\( 4 4 g2 2\) \breathe
  r4 ges\( 4 4 f4. f\) 4\( g4. 4.\) 4 d2 g R1*9 \bar "||"
  R1*12 
  c8.--^\mp 16-. b8-. 8-. bes4-- a-- \breathe
  aes8.-- 16-. g8-. 8-. f4-- bes,-- \breathe
  es8.-- 16-. d8-. 8-. c4-- bes8-- 8-- a2 aes4 g c1 \breathe r
  r2 r4 r8 g es'2 d c2.~ 8 r 
  c'8.--^\f 16-. b8-. 8-. bes4-- a-- \breathe
  aes8.-- 16-. g8-. 8-. f4-- bes,-- \breathe
  es8.-- 16-. d8-. 8-. c4-- bes8-- 8-- a2 d4 r8 8 2 g \breathe
  c,8.-- 16-. 8-. 8-.4-- g'-- \breathe
  f8.-- 16-. 8-. 8-. 4-- aes-- \breathe
  c8.-- 16-. 8-. c,8-. 4-- 8-- 8-. 2 2 2.~ 8 r
  R1*3 r4 r8 a'\f aes4 g
  
  r8 c,4->^"articolato" b16( c) d8 c16( d) es d es8
  r8 f4-> e16( f) g8 f16( g) aes g aes8 \breathe
  g8 bes16( aes) g8 bes16( aes) g f g8 r16 g aes bes c8 g16 c c2 b4 c r r2 
  
  c,8.^\pll 16 8 8 4 4 \breathe
  f8. 16 8 8 bes,4 es \breathe
  aes^\p^\< d, g g,\! \breathe
  r8 c4^\mfll b16 c d4.^\< c16 d es d es4 c8 aes'4. g16 f
  g8 c, f4~ 8 es16 f g4\! \breathe
  c8.--^\fa 16-. b8-. 8-. bes4-- a-- \breathe 
  aes8.-- 16-. g8-. 8-. f4-- bes,-- \breathe
  es8.-- 16-. d8-. 8-. c4-- bes8-- 8-. a2 aes4 g c2.~ 8 r
  
  r8 c4->^\ff 8 2 r8 4-> 8~ 8 8 4 
  r8 4-> 8 2 r8 4-> 8~ 8 8 4
  r8 4^\pll 8 2 r8 4 8~ 8 8 4 r8 4 8 4 4 c2 2~ 2. \breathe
  bes4 aes2.^\< 4 g1^\ff\fermata
  \fine
  
}	


bass_lyrics = \lyricmode {
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  Ky -- ri -- e e -- le -- i son,
  e -- le --  i -- son.
  
  Ky -- ri -- e e -- le -- i -- son,
  e -- le _ _ --  _  _  _ _ i -- son,
  Ky -- ri -- e e -- le -- i -- son,  
  Ky -- ri -- 
  e e -- le -- i -- son Ky -- ri --
  e e -- le -- i -- son Ky -- ri --
  e e -- le -- i -- son Ky -- ri --
  e e -- le -- i -- son Ky -- ri --
  e e -- le -- i -- son Ky -- ri --
  e e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- le -- i -- son, __ _
  Ky -- ri -- e e -- lei -- son,
  Ky -- rie~e -- lei -- son,
  Ky -- ri -- e e -- le -- i -- son. __ _

  Ky -- ri -- e e -- le -- i son,
  e -- le -- _ _ _ _ _ _ i -- son,
  Ky -- ri -- e e -- le -- i son.
  
  Ky -- ri -- e e -- le -- i son,
  e -- le -- _ _ _ _ _ _ _ _ i -- son,
  Ky -- ri -- e e -- le -- i son.
  
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- rie~e -- le -- i -- son.
  
  Chri -- ste e -- lei -- son, e -- lei -- son,
  Chri -- ste e -- lei -- son,
  Chri -- ste e -- lei -- son.
  
  Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son, 
  Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son,
  Chri -- ste e -- le -- i -- son.
  Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son,
  e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son,
  e -- le -- _ i -- son. e -- le -- i -- son. __
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son,
  e -- lei -- son, e -- lei -- son. 
  Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son, Ky -- ri -- e e -- lei -- son, 
  e -- le -- i -- son. __
  
  e -- lei -- son.
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e~e -- lei -- son, e -- le -- i -- son.
  
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- rie~e -- lei -- son.
  
  Ky -- ri -- _ e e -- _ le -- i -- son,
  e -- le -- _ _ _ _ _ _ i -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e e -- lei -- son,
  e -- le -- _ i -- son. __
  
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- lei -- son, __
  e -- le -- i -- son.

}



bass = \new Staff \with {instrumentName="Bass"
  shortInstrumentName ="B."} <<
  \hommes_style
  \armure
  \relative c' {\bass_music}
  \addlyrics {\bass_lyrics}
>>


\include "utils/booksq.ly"
