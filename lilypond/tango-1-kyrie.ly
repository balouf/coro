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
  Ky -- ri -- e e -- le -- i -- son,
  e -- le -- i -- son,
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
  4 ges2^"rit."\< aes4-- fis-- g2.\!\fermata r4 \bar "||"
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
  Ky -- ri -- e Ky -- ri -- e Ky -- ri -- e e -- lei -- son. __
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


upper = \relative c' {
  \armure
  \rpiano_syle
  <es g c>4. 4. 4 <f aes d>4. 4
  d'8( es e)
  <aes, d f>4. 4. <f aes d>4 
  <g d' es>4. <es g c>4 <es bes'>8( a aes)
  <es g>1 <d fis> <des f> <c es>2. <d f>8( <es g>)
  <c aes'>4^"rit" <ges' es'>-- <f d'>-- <es c'>--
  <d aes'c>2.\fermata r4^"a tempo" \bar "||"
  r8 <d es g>4-> 8-. 16 16 4.->
  r8 fis,->( g)-. es'-. b->( c-.) aes'->( g-.)
  r8 <d es g>4-> 8-. 16 16 4.->
  r8 <g, es'>4_\> <fis d'>8-. 8->( <f des'>-.) 8->( <es c'>-.)
  <c'es g>4-.\! r4 4-. r4
  \repeat unfold 15 {4-. r4 4-. r4}
  r4 <bes bes'>-- <aes aes'>-- <g g'>--
  r8 <aes es'>4.-> r8 <aes d>4.->
  r8 <bes f'>4.-> r8 <bes des e>4.->
  r8 <aes es'>4.-> r8 <aes d>4.->
  <<{<des f>2--} \\ {aes4 g}>> <g c g'>2--
  r8 <aes es'>4.-> r8 <aes d>4.->
  r8 <bes f'>4-> 8-- 4-- <a e'>--
  r8 <aes es'>4.-> r8 <aes d>4.->
  <bes d g>2_\< <b f'aes>
  <c es g>4.->\f 4.-> 4->
  <c g' c>-- <bes f' bes>-- <<{<aes aes'>2--} \\ {es'4 d}>>
  <g, d'g>-- <aes c f>-- <bes es g>-- <des es g>--
  <c es g>4.-> 8-> r <c fis>-. r <b f'>-.
  r8 fis->( g-.) d'-. <aes d>8.-> 16-> 8-> <aes c es>->
  r8 <c es g>4.->_\ff r8 <b f'aes>4.->
  r8 <c es aes>4.-> r8 <c g'c>4.->
  r8 <bes f' bes>4.-> 4-- <bes e>--
  r8 <aes es'>4.-> r8 <aes d>4.->
  r8 bes'4(^"cantado" a16 bes <f b>4. bes16 b \bar "||"
  <c es,> b <c es,>4) g8( <aes es'>4. d16 c
  <aes d>8) fis( <g d'> c16 d c bes <g c>4.)
  r8 <fis fis'>4( <f f'>16 <fis fis'> <g g'>4 <aes aes'>8 <bes bes'>)
  \clef bass
  r8 c,4_\mf b16 c <aes d>4. c16 d <g, c> bes <g c>4
  bes16 aes <f bes>8 aes16 g <es aes>8 g16 f
  r8 g4-> f16 g g4.-> f16 g g4.-> f16 g g-> f g4.->
  \bar "||" \clef treble
  r8 \grace c''16( c,4)(_\f b16 c <aes d>4. c16 d
  <c g> bes c8~ 16) f,( g aes <f bes>8 aes16 g <es aes>8 g16 f)
  r8 <d g>4-> f16( g) <c, g'>4. f16( g)
  <c, g'>4. f16( g) <g c,>( f) <g b,>4.
  \bar "||"
  es8(_\mf\> c g) es'([ c g)] es'16( c g8)
  es'8( c g) es'([ c g)] es'16( c g8)\!
  es'8( c g) es'([ c g)] es'16( c g8)
  es'8( c g) es'([ c g)] es'16( c g8)
  r8 g-. g->( c)-. c(-> es)-. es16->( d c8)
  r8 fis,-. <fis c' es>4-> r8 <f b d>4.->
  es'8( c g) es'([ c g)] es'16( c g8)
  es'8( c g) es'([ c g)] es'16( c g8)
  r8 g-. <g c es>4-> r8 <fis c' es>4.->
  r8 aes'4->( bes16 d <bes des e a>4-- g')
  r8 g,4->( aes16 c <aes ces d g>16 f' <g d ces aes>4.)
  r8 f4->( d16 bes g8 f4 bes16 aes)
  f8( c aes) f'([ c aes)] f'16( c aes8)
  g'8(_\< b, aes) g'([ b, aes)] g'16( b, aes8)
  r8 <g c es>8-.\! 8-. r <c es g>8-. 8-. r <es g c>-.
  r8 <g, c es>8-.\! 8-. r <c es g>8-. 8-. r <es g c>-.
  r8 <es g c>8-.\! 8-. r <c es g>8-. 8-. r <g c es>-.
  r8 4.-> <fis c'>4-- <f b>--
  r8 <g c es>8-.\! 8-. r <c es g>8-. 8-. r <es g c>-.
  r8 <g, c es>8-.\! 8-. r <c es g>8-. 8-. r <es g c>-.
  r8 <g, c es>8-.\! 8-. r r <fis c' es>4-> r8
  <bes d f>2_\p <bes des e> <aes c es> <aes ces d>
  <g bes d> <g c es>-.
  r8 <aes c f>-._\< 8-. r8 8-. 8-. r8 8-.
  r8 <aes b f'>8-. 8-. r8 8-. 8-. r8 8-.
  \bar "||"
  <c es g>\!->[ 8-. 8-.] 8->[ 8-. 8-.] 8-> 8-. 
  <c es fis>\!->[ 8-. 8-.] 8->[ 8-. 8-.] 8-> 8-. 
  <c es g>\!->[ 8-. 8-.] 8->[ 8-. 8-.] 8-> 8-. 
  <c g' c>\!->[ 8-. 8-.] 8->[ 8-. 8-.] 8-> 8-. 
  <aes es' aes>\!->[ 8-. 8-.] 8->[ 8-. 8-.] 8-> 8-. 
  <bes f' bes>\!->[ 8-. 8-.] 8->[ 8-. 8-.] 8-> 8-. 
  <c g'c>\!->[ 8-. 8-.] 8->[ 8-. 8-.] 8-> 8-. 
  <es fis a d>\!->[ 8-. 8-.] 8->[ 8-. 8-.] <d f aes d>8-> 8-.
  c'(_\p g e) c'([ g e)] c'( g) <c, f a c>1_\mp
  <d f bes> <bes es g bes> <c es aes> <aes des f aes>
  <b d g>4.->_\mf 4.-> 4->
  r4 \grace {bes'16( a aes} g8)(_\f aes 
  <f bes es> d' cis d g2~ 8) c,4( e16 g 
  g8 f f c c a g f) f'2~ 8 bes,4( d16 f
  f8 es d es f16 g aes bes b c des d)
  es8( aes, aes bes c des d es)
  4( des8 c) \tuplet 3/2 4 {es des c es des c}
  \override TextSpanner.bound-details.left.text = "rit."
  c( aes f d c aes f d)\startTextSpan
  <<{c'1 }\\{r8 f,([ d)] aes'([ f d]) aes'( f)}>>
  <d g b>1\stopTextSpan\fermata
   \bar "||"
  R1*4 
  r2 r8 c-. des16 d es e
  f8.-- 16-. e8 8-. es d-. es16 e f fis
  g8.-- 16-. f8-. 8-. es4-- <des g>8-- g-.
  es' f4 es16 d <c d fis,>8 es4 <d bes f>16 des
  <c c'>8.-- 16-. <b b'>8-. 8-. <bes bes'>4-- <a a'>--
  <aes f'>8.-- 16-. <g e'>8-. 8-. <f aes es'>4-- <f aes d>--
  <d g d'>-- <c f c'>-- <bes es bes'>-- <g' des' g>--
  << {fis'4. 8 f r r f}\\{r8 c a r r b aes r}>>
  <g  es'>1
  f8.-- 16-. e8-. 8-. es4-- d
  <d g>8.-- 16-. <c f>8-. 8-. <bes es>4-- <des es g>8-. 8-.
  r c es fis <c f>4 <b f'>
  <c'c'>8.-- 16-. <b b'>8-. 8-. <bes bes'>4-- <a a'>--
  <aes f'>8.-- 16-. <g e'>8-. 8-. <f aes es'>4-- <f aes d>--
  < d g d'>-- <c f c'>-- <bes es bes'>-- <g' des' g>--
  <<{fis'4. 8 f4. 8}\\{r8 c a r r b aes r}>>
  <g es'>1_\f <c, es g>4.-> 4.-> 4->
  <c g' c> <bes f' bes> <<{<aes aes'>2}\\{es'4 d}>>
  <g, d' g> <aes c f> <bes es g> <des es g>
  r8 <c es g>4.-> r8 <c es fis>4.->
  r8 <aes c g'>4->( aes'16 c) 
  <aes c g'>8->( f') <b, d f bes!>->( aes')
  <g, c es g>8.-- 16( <fis c' es fis>8-.) 8-.
  <f c' es f>4-- <es c' es>--
  < f aes es'>8.-- 16 -. <f aes d>8-. 8-. <f aes c>4-- <f aes b>--
  <c es bes'>8.-- 16( <c es a>8-.) 8-. <c es aes>4-- <c es g>--
  <a d fis>2 <aes des f> <g c e>1\>
  <aes c f>4--_\mp <g c g'>-- <c g' c>-- <c fis c'>--
  <b f' b>-- <bes e bes'>-- <a es' a>-- <aes d aes'>--
  <g d' g>-- <aes c f>-- <g bes es>-- <des' es g>-- 
  r8 <c es g>4.-> <c f>4-- <b f'>--
  <c'c'>8.-- 16-. <b b'>8-. 8-. <bes bes'>4-- <a a'>--
  <aes f'>8.-- 16-. <g e'>8-. 8-. <f aes es'>4-- <bes, aes' d>--
  <d g d'> <c f c'> <bes es bes'> <g' des' g>
  <<{fis'4. 8 f4. 8}\\{r8 c a r r b aes r}>>
  <g c es>8. es16( <c f>8-.) 8-. <c fis>4-> <b g'>
  \clef bass
  g_\pll aes a_\< bes b c <aes des>\! <g b>
  <g c>_\p\< <f c'>4 4 <f b>
  \clef treble
  <c' g'>_\mf <c aes'> <c a'> <c bes'>_\<
  <f bes> <f c'> <es aes des> <es g b>
  <c aes' c>4. 8 4\! <b g' b>
  <c es g>4.->_\f 4.-> 4->
  <c g' c> <bes f' bes> <<{<aes aes'>2}\\{es'4 d}>>
  <g,d'g> <aes c f> <bes es g> <des es g>
  \override TextSpanner.bound-details.left.text = "rall."
  <c es g>2\startTextSpan <c fis>4 <b f'> <c es> 
  c''2.*3/4->-\tweak style #'zigzag \glissando
  \single \hideNotes c,,2.*1/4\stopTextSpan
  r8 <c' es g c>4->_\ff 8 2
  r8 <c f aes c>4-> 8->~ 8 8-. 4->
  r8 <d f aes c>4-> 8 2
  r8 <d es g c>4-> 8->~ 8 <c es g c>-. 4->
  <c, es g>2._\pll 4 <a d fis>1 
  <aes des f>2. 4 <g c es>1~ 2.
  <d' f>8(\startTextSpan <es g>) 
  <c aes'>4 <ges' es'>-- <f d'>-- <es c'>
  <d b'>1\stopTextSpan\fermata\fine
}

lower = \relative c {
\armure
\lpiano_syle
<c g' c>4.^\ffp 4. 4
<c aes' c>4. 4. 4 <b aes' d>4. 4. 4
<c g' c>4. 4. 4 1^\pl <c a'> <c aes'>
<< {g'1} \\ {c,4. 4. bes4} >>
<aes ges'>1^\< <g f'>2.\fermata c,,4->\f( c')
\repeat unfold 40 {c,->( c')} bes'-- aes-- g--
f es d bes g' f e c f f' bes, bes, es2-- e--
f4 es d bes g8 g'4-> 8-. 4-- fis-- 
f f' bes, bes \times 2/3 {es-- g-- f8-- es--}
\times 2/3 {d4-- f-- es8-- d--}
c4 b bes a aes g f bes, es d c bes a a aes g
c c' bes bes aes aes g g f f es es d d des-- c--
f f bes bes, es es d d \bar "||" c c f f bes, es es aes,
d d g g, c c' bes, bes' aes, aes' <g d'> <f c'>
es es' aes, aes, d d' d,8 f es d \bar "||"
c4 c' bes, bes' aes, aes' g f es es aes aes d, d g8 f es d
c4. c'4. 4 4. 4. 4 4. 4. 4 bes4. 4. 4
aes4. 4. 4 d4. 8-. g,4. 8-. c4. 4. 4 bes4. 4. 4
a a, d d' <<{r8 d bes'4 r8 g, e'4}\\{g,2 c,}>>
<<{r8 c' aes'4 r8 f aes4}\\{f,2 bes}>>
es,4 es aes aes, d4. 4. 4 g4. 4. 4
<<{c1}\\{r4. c,4. 4}>>
<<{bes'1}\\{r4. bes,4. 4}>>
<<{aes'1}\\{r4. aes,4. 4}>>
d'4 4 aes g
<<{c1}\\{r4. c,4. 4}>>
<<{bes'1}\\{r4. bes,4. 4}>>
a'4. 8-. d,4. 8-.
r8 g-. d'-. g r c,,-. g'-. c-.
r8 f,-. c'-. f-. r bes,,-. f'-. bes-.
r8 es,-. bes'-. es-. r aes,-. es-. aes,-.
d4. 4. 4 g4. 4. 4 \bar "||"
c,4.-> 4.-> 4-> d4.-> 4.-> 4->
es4.-> 4.-> 4-> e4.-> 4.-> 4->
f4.-> 4.-> 4-> g4.-> 4.-> 4->
aes4. 8~ 8 8 bes c d4. c b4 bes1
r8 f->( a-.) c-. g'(-> f)-. bes->( a-.)
c->( bes-.) bes->( aes-.) aes->( g-.) g->( f-.)
r es,->( g-.) bes-. f'->( es-.) aes16( g) bes8~-> 8
aes8-. aes->( ges-.) 8->( f-.) 8->( es-.)
r8 des,->( f-.) aes-. es'->( des-.) bes'->( aes-.)
g4 \grace ges8( f4) d g, 
aes aes' g, g'8 aes,16( a)
<<{bes8( g' e' c bes g e c)}\\{bes1}>>
<<{r8 f'( c') r f,( c') r4}\\{a,4. 4. f8( g)}>>
<<{aes8( f' d' bes aes f d bes)}\\{aes1}>>
<<{r8 es'( bes') r es,( bes') r4}\\{g,4. 4. es8 e16( f)}>>
<<{ges8( es' c' aes ges es c aes)}\\{ges1}>>
<<{r8 des' aes' des,} \\{f,2}>> f8->( e) f(-> fis)
g4. 4. 4 4. 4. 4 1\fermata \bar "||"
c'8.--^\mp 16-. b8-. 8-. bes4-- a--
aes8.-- 16-. g8-. 8-. f4-- bes,--
es8.-- 16-. d8-. 8-. c4-- bes8-- 8-.
a4. 8 aes g'-. aes16 a bes b
c8.-- 16-. b8-. 8-. bes4-- a--
aes8.-- 16-. g8-. 8-. f4-- bes,--
<es d'>8.-- 16-. <d c'>8-. 8-. c4-- bes8-- 8-.
<<{r8 fis' c r8 r2}\\
{a4. 8 aes4 g}
>>
<<{r8 g' es'4 r8 g, es'4}\\{c,2 2}>>
<<{r8 c aes'4 r8 c, aes'4}\\{f,2 2}>>
<es' bes'>4-- <d aes'>-- <c g'>-- <c' bes des es>--
<<{r8 a fis' a, r8 aes f' aes,}\\{es2 d}>>
c8.-- c'16-. b8-. 8-. bes4-- a--
aes8.-- 16-. g8-. 8-. f4-- bes,
es8.-- 16-. d8-. 8-. c4-- bes8-- 8-.
a2 aes4 g
<<{r8 g' es'4 r8 g, es'4}\\{c,2 2}>>
<<{r8 c aes'4 r8 c, aes'4}\\{f,2 2}>>
<es' bes'>4-- <d aes'>-- <c g'>-- <g' des' es>--
<<{r8 a fis' a, r8 aes f' aes,}\\{es2 d}>>
r8 b,->( c-.) es-. aes16( g) fis4->( g8-.)
c8. 16 b4 bes a aes8. 16 g4 f bes, es8. 16 d4 c bes8 8
a4 a' d, d' d, d' g, g, c c' c, g' f f' f, aes
c, c' c, c8 c' r <c, c'>8 8 8 r8 8 8 8
r aes' g c \tuplet 3/2 {bes4-- aes-- g8-- ges--}
f4 e es d des c b bes es d c bes a2 aes4 g
<<{r8 g'' es'4 r8 g, es'4}\\{c,2 2}>>
<<{r8 c aes'4~ 4 }\\{f,2.}>> <bes f' aes>4
<es bes'> < d aes'> <c g'> <g' bes des es>
<<{r8 a fis' a, r8 aes f' aes,}\\{es2 d}>>
<c c'>4 d aes g c1 <f, f'>2 bes4 es, aes d, g g, 
\repeat unfold 5 {r8 <c c'>-> 8-> 8->} r8 <g g'>4-> 8->
c'8.-- 16-. b8-. 8-. bes4-- a--
aes8.-- 16-. g8-. 8-. f4-- bes,--
es8.-- 16-. d8-. 8-. c4 bes8-. 8-.
<a a'>2 <aes aes'>4 <g g'> <c c'> r4 r2
\repeat unfold 8 {c'4 c,->}
<c c'>2. 4 1~ 2. 4 4 4 4 4 4 4 4 bes'
<<{ges'2 aes4 fis}\\{aes,1}>> <g g'>1\fermata\fine
}

piano = \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

\include "utils/full.ly"
% \include "utils/tangoBase.ly"
