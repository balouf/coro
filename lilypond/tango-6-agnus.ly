% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

% \paper { indent = 0\cm}

\header {
  title = "Misatango"
  subtitle = "6 - Agnus Dei"
  composer = "Martín Palmeri"
  tagline = ""

}

conductor_size = 18
individual_size = 20

\include "utils/macros.ly"


armure = {
\accidentalStyle modern-cautionary
\compressEmptyMeasures
\tempo 4 = 70
\time 4/4
\key c \major
}


sop_music = {
  R1*20 \break
  \tempo "a tempo"
  e'2.~\(^"Solo" 8 d16( e) c2 4\)
  r8 a16\((c) d2 8 8 c16( d) c( b) d2 c4\)
  r8 a16\( b c2.( b16 c) b( a) g( f) g4.~2\)
  f16 e f4.~( 16 e) f( g) a g f e f2 e \break
  e'2.~^\fs^"tutti" 8 d16( e) c2 4 r8 a16( c)
  d2 8 8 c16( d) c( b) d2 c4 r8 a16 b
  c2.( b16 c) b( a) g( f) g4.~4 r8
  f16 e f2~16 e f( g) a g f e f2^\> e\! 
  \bar "||" \break
  R1*14
  fis4.^\mp e16( fis) g4. fis16( g) a( g) a4. \breathe
  d4. cis16( b) cis8 fis, b4~(8 a16 g) a4 \breathe
  fis4. e16( fis) gis4. a16( b) a( gis) fis4. r2 R1*2
  g8(^\mf^\cresc b) a( g) a( c) b( a)
  b( d c b c16 b) c4. \breathe
  d16( c) d4. \breathe e16( d) e4.\!
  R1*5
  e,4.^\mp^\cresc d16( e) f4. e16( f)\! g( f) g4. \breathe
  c4. b16( a) b8 8 e4~8 d16( c) d4 \breathe
  b2.^\>( c4) 2\! r r r4
  d~^\< d cis\! e--^\> d\! r 
  g,2^\< f4\! a2.^\> gis4\! \breathe
  R1*4 g4.^\mp f16( g) a4. g16( a) b( a) b4. \breathe
  e4.--^\cresc d16( c) d8 g, c4--~8 b16( a) b4 \breathe
  g2 a8( g16 a b8) c \breathe
  c4.-- b16( a) b8 e, a4--~8 g16( f) g4 \breathe
  c8(^\< b16 c d8) e e4.--^\f d16( c) d8 g, c4--~8 b16( a) b4 \breathe
  b4.-- a16( g) a4^\> \breathe a4--~8 g16( fis) g4\!
  R1*5
  f2^\p g a4 2 d4~( 4 cis e) d \breathe
  bes8( d) c( bes) c( e) d( c) d( f e d e16 d) e4.
  r4 e->^\ff r4 e-> r e-> r e-> 
  d( c b) a\breathe a2.^\> gis4\!
  R1*2
  r4 d'^\mf c2 b1\breathe
  a4.^\f gis16( a) b4. a16( b) c16(^\cresc b) c4.\breathe
  f e16( d) e8 a, d4~( 8 c16 b) c4 \breathe
  a4. gis16( a) b4. c16( d) c( b) a4.~2\!
  \break
  \override TextSpanner.bound-details.left.text = "rit."
  c4^"Solo"\startTextSpan 4 4 4 1~1\fermata\stopTextSpan 1^"A tempo"
  R1*4
  r8 d4.~^\mf^"Solo" 2 c1^\cresc r8 e4.~2 d1
  r8 e4 d8 r e4 d8 1 c1~1 r8 d4. c2
  r8 e4. d2 r8 e4 d8 g4 f d1 \after 2 ^"allarg." e\!
  c4.^\fam^"Sopr. (tutti)" 8 4 4 2 2 \breathe
  d4. 8 e4 d d2 c\breathe
  c4.^\spl 8 8( g) e( g) fis2 2 \breathe
  f4. 8 g4 f e1 c\breathe
  c1 1^\decresc \breathe 1 1 \breathe
  \override TextSpanner.bound-details.left.text = "rall."
  1 1~\startTextSpan2. r4 \breathe e1^\ppp^\> c c\!\stopTextSpan\fine
  
}	


sop_lyrics = \lyricmode {
A -- gnus De -- i, qui __ tol -- lis 
pec -- ca -- ta __ mun -- di,
mi -- se -- re -- re __ no -- bis, __
mi -- se -- re -- re __ mi -- se -- re -- re no -- bis.

A -- gnus De -- i, qui __ tol -- lis 
pec -- ca -- ta __ mun -- di,
mi -- se -- re -- re no -- bis, __
mi -- se -- re -- _ re mi -- se -- re -- re no -- bis.

Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- cem,
do -- na __ no -- bis __ pa -- cem.

Do -- na __ no -- bis __ pa -- cem, pa -- cem, pa -- cem.

Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- _ cem, pa -- cem,
do -- na no -- bis pa -- _ _ cem.

Do -- na __ no -- bis pa -- cem,
do -- na __ no -- bis pa -- _ cem,
pa -- _ cem,
do -- na __ no -- bis pa -- _ cem, pa -- cem,
do -- na __ no -- bis pa -- _ cem,
pa -- _ cem, pa -- _ cem.

Do -- na no -- bis pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na no -- bis pa -- cem, pa -- cem,
pa -- _ cem.
Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- cem,
do -- na __ no -- bis __ pa -- cem. __

do -- na no -- bis pa -- cem.
Pa -- cem, pa -- cem,
do -- na no -- bis pa -- cem. __
Pa -- cem, pa -- cem,
do -- na no -- bis pa -- cem.

do -- na no -- bis pa -- cem,
do -- na no -- bis pa -- cem,
do -- na no -- bis __ pa -- cem,
do -- na no -- bis pa -- cem,
pa -- cem, pa -- cem, pa -- cem, __ pa -- cem, m
}




sop = \new Staff \with {instrumentName="Soprano"
  shortInstrumentName ="S."} <<
  \soprano_style
  \armure
  \relative c' {\sop_music}
  \addlyrics {\sop_lyrics}
>>


alt_music = {
  R1*28
  a'2^\fs gis b4 a2 \breathe e4 a2 gis4 4 
  \tuplet 3/2 2 {gis4 g4 8 fis8 4 f4 8 e} \breathe
  e4~8 f16( g) a( g) a4. \breathe
  c,4~16 d e( f) g( f) g8 \breathe
  g,8 8 e'4( d2) a4 d2^\> d\!
  \bar "||" \break
  R1*10
  b4.^\mp a16( b) c4. b16( c) d( c) d4. \breathe
  g fis16( e) fis8 b, e4~8 d16( c) d4 \breathe
  b4. ais16( b) cis4. d16( e) d( cis) b4. \breathe
  4 4 fis'2. f4 e( d cis) cis \breathe 
  cis2( dis4) eis \breathe fis a a-- g fis2^\cresc \breathe
  d8( fis) e( d) e( g) fis( e) fis( a) g( fis)
  g16( fis) g4.\breathe fis16( e) fis4. 
  gis16( fis) gis4. \breathe a16( gis) a4. \breathe
  b16( a) b4.\breathe c16( b) c4.\! r1
  a,4.^\mp gis16( a) b4. a16( b) c( b) c4. \breathe
  f4. e16( d) e8 8 a4~8 g16( f) g4 r2
  a^\p^\cresc g f4 d\! e2 f \breathe
  g4. f16( e) f8 a, e'4~8 d16( c) d2.
  r4 a'2^\< gis4\! b--^\> a\!\breathe
  f8( a) g( f) g( b) a( g) a( c) b( a) a16( g) a4.~2\breathe
  f2.^\> e4\!\breathe
  c4.^\mp b16( c) d4. c16( d) e( d) e4. \breathe
  a4. g16( f) g8 c, f4~8 e16( d) e4 \breathe
  a2^\p g g f e d^\cresc\breathe g f \breathe
  b4.-- a16( g) a8 d, g4~8 f16( e) f4\breathe
  g4.-- f16( e) f8 b, e4--~8 d16( c) d4 \breathe
  e8^\< d16( e) f8 a b4.--^\f a16( b)
  a8 d, g4--~8 f16( e) f4\breathe
  f4.--(^\> e16 d e4) <dis f>\! R1*5
  f2.^\p e4 g a \breathe
  f8( a) g( f) g( bes) a( g) a( c bes a a16 g) a4.~2 \breathe
  a2. gis4 r4 a->^\ff r a-> r g-> r a->
  g (f2) e4 \breathe e2( dis4) d \breathe
  e4.^\mp d16( e) f4. e16( f) g( f) g4.\breathe
  a g16( f) g8 c, f4~( 8 e16 d) e4 \breathe
  e4. d16( e) f4. g16( a) g( f) e4. \breathe
  4^\f 4 4.^\cresc f16( g) a4. g16( f) e8 8 f4( e8 a) 4\breathe
  e2( dis4 d) e1\!
  R1*2 r1\fermata 
  c4.^\p^"Alto+Bass" b16( c) d4. c16( d) e( d) e4.\breathe
  f e16( d) e8 8 d4~( 8 c16 b) c4\breathe
  c8 b16( c) 8 b16( c) c( b) c4. \breathe
  c b16( c) d4. c16( d)e( d) e4. \breathe
  f4. e16( d) e8^\cresc 8 d4~( 8 c16 b) c4 \breathe
  c8 b16( c) 8 b16( c) c( b) c4. \breathe
  c4. b16( c) d4. c16( d) e( d) e4. \breathe
  f4. e16( d) e8 8 a4~( 8 g16 f) g4\breathe
  g4.( f16 e) f8 4--( e16 d) e8 4--( e16 d) d2
  r8 c4 b16( c) d8 c16( d) e( d) e8
  r8 f4 e16( f) g8 f16( g) a( g) a8 \breathe
  c4. b16( a) b8 a16( g) a8( g16 f) g8 \breathe
  4-- f16( e) f8 e16( d) e8( d16 c e d) c4.\!
  \breathe
  a'8(^"Alto only" g16 a gis8) fis16( gis)
  e4.^\fam 8 4 4 f2 2 \breathe
  4. 8 4 4 e2 2\breathe
  4.^\spl 8 4 c d2 2\breathe
  des4. 8 4 4 c1 1\breathe
  c1 1^\decresc \breathe 1 1 \breathe
  1 1~2. r4 \breathe 1^\ppp^\> c c\!\fine
  
}	


alt_lyrics = \lyricmode {
A -- gnus De -- i,
qui tol -- lis pec -- ca -- _ ta __ _ mun -- _ di __ _
mi -- se -- re -- re, mi -- _ se -- re -- re
mi -- se -- re -- re no -- bis.

Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- _ cem,
do -- na __ no -- bis __ pa -- cem. 

Do -- na no -- bis pa -- cem, 
pa -- cem, do -- na no -- _ bis,
do -- na __ no -- bis __ pa -- _ _ cem, pa -- cem,
pa -- cem, pa -- cem, pa -- cem, pa -- cem.

Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- _ cem,
do -- na no -- bis pa -- cem,
do -- na __ no -- bis pa -- _ cem,
do -- na no -- bis, do -- na __ no -- bis __
pa -- _ _ cem, __ pa -- cem.

Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- _ cem,
do -- na no -- bis pa -- cem, pa -- cem,
do -- na __ no -- bis pa -- _ cem,
do -- na __ no -- bis pa -- _ cem, pa -- _ _ cem,
do -- na no -- bis pa -- _ cem, pa -- cem.

Do -- na no -- bis,
do -- na __ no -- bis __ pa -- cem, __ pa -- cem,
do -- na no -- bis pa -- cem, pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- cem,
do -- na __ no -- bis __ pa -- cem.
Do -- na no -- bis __ do -- na __ no -- bis pa -- cem,
pa -- cem.

Do -- na __ no -- bis __ pa -- cem,
do -- na __  no -- bis pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- cem,
pa -- cem, pa -- cem, pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis __ pa -- cem,
pa -- cem,
do -- na no -- bis pa -- cem,
do -- na no -- bis pa -- cem,
do -- na no -- bis pa -- cem,
do -- na no -- bis pa -- cem,
pa -- cem, pa -- cem, pa -- cem, __ pa -- cem, m









}



alt = \new Staff \with {instrumentName="Alto"
  shortInstrumentName ="A."} <<
  \alto_style
  \armure
  \relative c' {\alt_music}
  \addlyrics {\alt_lyrics}
>>

ten_music = {
  R1*28
  d'2^\fs 2 e e4 \breathe e d2 c4 b8( f') 
  e4 e a, a \breathe
  a2 c c c \breathe a4 4 4 4 8(^\> c4 b16 a) gis2\!
  \bar "||" \break
  R1*6
  e4.^\mp d16( e) f4. e16( f) g( f) g4. \breathe
  c4. b16( a) b8 e, a4~( 8 g16 f) g4 \breathe
  e4. d16( e) f4. g16( a) g( f) e4. \breathe
  g4 fis b2. ais4 d( c c) b \breathe
  b2( ais) b4( d) \breathe d\( cis\)
  e( cis b) b a( g2) fis4 \breathe a2 b \breathe
  a8( cis) b( a) b( d) cis( b) 
  cis(^\cresc e) d( cis d16 cis) d4. \breathe
  c2 d e e e1 1\!
  R1*4
  e,4.^\mp d16( e) f4.^\cresc e16( f) g( f) g4. \breathe
  c4. b16( a)\! b8 8 e4~8 d16( c) d4 r2
  a4.^\< gis16( a) 8 8\! 4--~^\>8 gis16( fis) gis4\!\breathe
  a2 b c d r1 
  b8( d) c( b) c( e) d( c) d(^\> f e d d16 c) d4.\!\breathe
  R1*5
  g,4.^\mp f16( g) a4.^\cresc g16( a) b( a) b4. \breathe
  e4.-- d16( c) d8 g, c4--~8 b16( a) b4 \breathe
  e2( d8 e16 d c8) d \breathe 
  d4.--^\f c16( b) c8 f, b4--~8 a16( g) a4 \breathe
  b4^\< c e-- d--\! d-- c-- c2.^\> e4\!
  R1*5
  a,8^\p( c) bes( a) bes( d) c( bes) c( e d c d16 c) d4.\breathe
  e2 f f4( e) d( c) b2 bes r4 c->^\ff r d-> r c-> r c->
  b( a d) c \breathe 2. b4 \breathe
  a8(^\mp c) b( a) b( d) c( b)
  c( e d c c16 b) c4. r4 b( c a) d1\breathe
  c4.^\f b16( c) 4. 16( b) a(^\cresc b) a4.\breathe
  c4 b g gis a c\breathe
  4. b16( a) 4. gis16( b) a( b) c4.~2\!
  R1*2 r1\fermata R1*2
  c,4.^\p^"Soprano+Tenor" b16( c) d4. c16( d) e( d) e4.\breathe
  f e16( d) e8 8 d4~( 8 c16 b) c4\breathe
  8 b16( c) 8 b16( c) d8( e16 f) g4 \breathe
  g4.^\cresc f16( g) a4. g16( a) b( a) b4. \breathe
  c4. b16( a) b8 8 a4~(8 g16 f) g4 \breathe
  c,4. b16( c) d4. c16( d) e( d) e4. \breathe
  f4. e16( d) e8 8 a4~( 8 g16 f) g4\breathe
  g4.--( f16 e) f8 4--( e16 d) e8 4--( d16 c) d2
  r8 c4 b16( c) d8 c16( d) e( d) e8 \breathe
  r8 f4 e16( f) g8 f16( g) a( g) a8 \breathe
  c4. b16( a) b8 a16( g) a8( g16 f g f) g4.\breathe
  a8( g16 a b8) a16( b)\!
  g4.^\fam^"Tenor only" 8 4 4 a2 2 \breathe
  4. 8 4 aes g2 2 \breathe
  4.^\spl 8 4 4 a2 2\breathe
  aes4. 8 4 4 g1 c,\breathe
  c1 1^\decresc \breathe 1 1 \breathe
  1 1~2. r4 \breathe g'1^\ppp^\> c, c\!\fine
  
  
  
  
}	


ten_lyrics = \lyricmode {
A -- gnus De -- i,
qui tol -- lis pec -- ca --  ta  mun -- di
mi -- se -- re -- re, mi -- se -- re -- re no -- bis.

Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- cem,
do -- na __ no -- bis __ pa -- cem, 
Do -- na no -- bis pa -- cem, pa -- cem, __

do -- na no -- bis pa -- cem, 
pa -- cem, do -- na __ no -- bis, __ pa -- _ cem,
do -- na no -- bis pa -- cem.

Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- _ cem,
do -- na __ no -- bis pa -- _ cem,
do -- na no -- bis,
do -- na __ no -- bis __ pa -- cem.

Do -- na __ no -- bis pa -- cem,
do -- na __ no -- bis pa -- _ cem,
pa -- cem,
do -- na __ no  -- bis pa -- _ cem,
do -- na no -- bis pa -- cem, pa -- cem.

Do -- na __ no -- bis __ pa -- cem,
do -- na no -- bis __ pa -- cem,
do -- na no -- bis pa -- cem, pa -- cem,
do -- na __ no -- bis __ pa -- em, pa -- cem.

Do -- na __ no -- bis __ pa -- cem,
do -- na no -- bis pa -- cem,
do -- na __ no -- bis __ pa -- cem. __

Do -- na __ no -- bis __ pa -- cem,
do -- na __  no -- bis pa -- cem,

do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- cem,
pa -- cem, pa -- cem, pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis __ pa -- cem, pa  -- cem,
do -- na  no -- bis pa -- cem,
do -- na no -- bis pa -- cem,
do -- na no -- bis pa -- cem,
do -- na no -- bis pa -- cem,
pa -- cem, pa -- cem, pa -- cem, __ pa -- cem, m



}



ten = \new Staff \with {instrumentName="Tenor"
  shortInstrumentName ="T."} <<
  \alto_style
  \armure
  \relative c' {\ten_music}
  \addlyrics {\ten_lyrics}
>>


bass_music = {
R1*28
b,2^\fs bes a g4 \breathe g' f2 e4 4 a4 4 4 4 \breathe
f2 2 e e \breathe d4 4 c c b2^\> e\!
\bar "||" \break R1*2
a,4.^\mp gis16( a) b4. a16( b) c( b) c4. \breathe 
f4. e16( d) e8 a, d4~8 c16( b) c4 \breathe
a4. gis16( a) b4. c16( d) c( b) a4. \breathe
d4 g, c( b a) f'e( es d) g, \breathe
c2( d) e \breathe es4 d g2( cis,4) fis
b,( a d) g \breathe g2( fis) b, \breathe
e4 a, d2( gis4) cis, fis( e a,) d\breathe 
d2 cis \breathe fis g a^\cresc b\!
R1*4
a,4.^\mp gis16( a) b4. a16( b) c( b) c4. \breathe
f4. e16( d) e8 8 a4~8 g16( f) g4\breathe
f2 e4( d) c2 d^\cresc c4( b a) a'\! \breathe
g4. f16( e) f8 a,e'4~8 d16( c) d4\breathe
c2 b e4 d\breathe
c8( e) d( c) d( f) e( d) e( g f e e16 d) e4.\breathe
e2 f g a\breathe b^\> b,4 e\!\breathe R1
c4.^\mp b16( c) d4. c16( d) e( d) e4. \breathe
a4. g16( f) g8 c, f4~8 e16( d) e4 \breathe
b'2^\p a g f^\cresc e d c \breathe
f4.-- e16( d) e8 a, d4--~8 c16( b) c4 r2
a'4.--^\f g16( f) g8 c, f4--~8 e16( d) e4 \breathe
f4.-- e16( d) e4 a,-- d2.--^\> g4\! R1*10
a,4.^\ff gis16( a) b4. a16( b) c16( b) c4. \breathe
f4. e16( d) e8 a, d4~( 8 c16 b) c4 \breathe
a4. gis16( a) b4. c16( d) c(^\mp b) a4. \breathe 
d2 e \breathe
f8( a) g( f) g( b) a( gis) a( c b a a16 gis a8~2) gis4\breathe
a^\f gis g fis f(^\cresc e d) g, \breathe 
c( b a) g'\breathe fis2( f4 e) a,1\!
R1*20 \break 
%e'16( d) c4. 
s2 \breathe a'8(^"Bass" g16 f e8) 16( d)
c4.^\fam 8 4 4 2 2 \breathe
4. 8 4 4 2 2 \breathe 4.^\spl 8 4 4 2 2 \breathe
4. 8 4 4 1 1\breathe
c1 1^\decresc \breathe 1 1 \breathe
1 1~2. r4 \breathe 1^\ppp^\> c c\!\fine

}	


bass_lyrics = \lyricmode {
A -- gnus De -- i,
qui tol -- lis pec -- ca --  ta  mun -- di
mi -- se -- re -- re, mi -- se -- re -- re no -- bis.

Do -- na __ no -- bis pa -- cem,
do -- na __ no -- bis pa -- _ cem,
do -- na __ no -- bis pa -- cem.
Do -- na no -- bis pa -- cem, pa -- cem,
Do -- na no -- bis pa -- cem, pa -- cem,

do -- na no -- bis pa -- cem, 
pa -- cem, do -- na -- no -- bis.

Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- _ cem,
do -- na __ no -- bis pa -- cem,

do -- na __ no -- bis pa -- _ cem, pa -- _ _ cem,
do -- na __ no -- bis __ pa -- cem,
do -- na no -- bis pa -- _ cem.

Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- _ cem,
do -- na no -- bis pa -- _ cem,
do -- na __ no -- bis pa -- _ cem,
do -- na __ no -- bis pa -- _ cem,
do -- na __ no -- bis pa -- cem.

Do -- na __ no -- bis __ pa -- cem,
do -- na __ no -- bis pa -- cem,
do -- na __ no -- bis __ pa -- cem, pa -- cem, 
do -- na __ no -- bis __ pa -- cem.
Do -- na no -- bis pa -- cem, pa-- cem, pa -- cem.

pa  -- cem, do -- na no -- bis pa -- cem,
do -- na no -- bis pa -- cem,
do -- na no -- bis pa -- cem,
do -- na no -- bis pa -- cem,
pa -- cem, pa -- cem, pa -- cem, __ pa -- cem, m
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
s64 \grace {<c' e a>16} 1*63/64_\f_\>~1~1~2 r\! \bar "||"
e2.~_\pe 8 d16 e c2. r8 a16 c d2~8 8 c16 d c b 
d2 c4 r8 a16 b c2. b16 c b a \clef bass
g f g4.~g f16 e f2~16 e f g a g f e f2 e4
\clef treble a'16_\mf b c d
<<
  {e2.~8 d16 e c2. r8 a16 c
  d2~8 8 c16 d c b d2~16 b c e gis a ais b
  c2. b16 c b a g f g4.~4 r8 f16 e
  f2~16 e f g a g f e f2^"rit." e}
  \\
  {a,2 gis b4 a2 e4 a2 gis gis8 g g fis8 8 f f e
  c e f g a16 g a4. c,8 d e f g16 f g8 g,4
  e'd2 a4 8 c4 b16 a gis2
  << {a'2 gis <a e c> <e c a> <d f>1 <a c e>
     f'4 e d c e d c2 <a d f>1 <a f'>2 <gis e'>
     a'2(_\fs aes <a c>1) a2( gis <a c>1)
     }
     \\
     {<d, f>1 s a2 gis s1 <c a'>1 <c g'> s1 d
     <f e'> e <d d'> e}
  >>
  }
>>
<a, e'a>1( <g c g'>)
r8 a( d f) r a,( d f) r_\> a,( d f) <e d gis,>2\!
\bar "||" \break
r1 r1
<a,c e>2_\mp <a d f> <c e a>1 4 <c f a>2 <c e g>4
<a c e>2 <a d f> <a e'> <f c'>4. b8
<d g, e> c4 e8 <c g'>4. c8 <c g'>4 <c ges'> <c f> <b f'>
r8 g b e r a, c f r b, d g <c,g'>4 <c fis> <b fis'>2
<b e g>4 <ais e'fis!> 
<a d fis> <g c g'> <fis c'fis> <d b'fis'> 
<b'f'>2 <ais e'> <fis b d> <d'g>4 <cis g'>
<cis fis>2 <b d fis>4 <b d eis>
<a cis fis> <g d'> <g cis> <fis cis'>4 2 <eis b'>
a4 a' <a d,b> g <fis cis>2_\cresc
d8( fis)  e( d) e( g) fis( e) fis( a) g( fis)
<<{g b a g a c b a b d c b}
  \\
  {g16-> fis g4. fis16-> e fis4. 
   gis16-> fis gis8 gis16-> fis gis8}>>
<a c>16-> <gis b> <a c>8 <a c>16-> <gis b> <a c>8
<b d>16-> <a c> <b d>8 <b d>16-> <a c> <b d>8
<c e>16-> <b d> <c e>4.
<c, e a>2_\mp <d f a> <c e a> <b d aes'>
<c g'> <c f> <e a> <d g>4 < c f>
<c e>2 <a f'a>_\cresc <c e g> <a c f>\!
<b e g> <c d f a> <b e g b> <c f a>
<d f a>2. <b e gis>4
<<
  {r4 a'2 gis4 b a f8 a g f g b a g a c b a
  a16 g a8~2. a gis4}
  \\
  {a,2 b <c e> d d4 cis e d
  b8 d c b c e d c d f e d d16 c d4.}
>>
R1*4
r8 g d'4 r8 g, c4 r8 e, b'4 r8 e, a4
r8 d, g4 r8 c, f4 r8 b, e4 r8 d a'4
r4 r8 a, f'4 r r2 r8 c f4 r4 r8 a, d4 r
r8 a d4 <d g> <c g'>
\set tieWaitForNote = ##t
r8 a~ c~ f~ <a, c f>4
\set tieWaitForNote = ##f
<b dis f>
<<
  {g''4. fis16 g gis4. fisis16 gis
  a gis a4. c4. b16 ais
  b8 dis, b'a16 b a g a4.
  f4. e16 f g8 f f g
  f4. e16 f e2}
  \\
  {c8 e d c d fis e d
  e g f e e16 d e4.
  g,8 b a g a c b a
  a c b a b d c b
  bes des c bes bes16 a bes8 g16 fis g8}
>>
f4.^\p e16 f g4. f16 g a g a4.
d, cis16 d e4. d16 e f e f4.
g4. f16 g a4. g16 a
<<{b a b4. a4 gis}\\{d1}>>
r4_\ff <e a c e>-> r <f a b e>->
r <e g c e>-> r <e a c e>->
<g d'>( <f c'> <f b> <e a> 
<<{<c e a>2.}\\{s2 dis4}>>
<b d gis>4)
a8 c b a b d c b c e d c c16 b c4.
r4 <f a d> <e a c>2 <d e b'>1
<<
  {a'4._\f gis16 a b4. a16 b c_\cresc b c4. f e16 d
  e8 a, d4~8 c16 b c4 
  a4. gis16 a b4. c16 d c b a4.~2\!}
  \\
  {e2 2 2 a g4 f e2 s1 s1}
>>
\override TextSpanner.bound-details.left.text = "rit."
<a, c>1\startTextSpan <ges c> <f c'>2.\fermata\stopTextSpan
r4_\p r1^"A tempo" R1*4
r8 <e' g b d>4.~-> 2 < e g a c>1_\cresc
r8 <f a c e>4.~-> 2 <f a c d>1
r8 <f a c e>4->( <f a c d>8-.)
r8 <f aes b e>4->( <f aes b d>8-.) <e g b d>1
<e g a c>1~1 r8 <e g b d>4.-> <e g a c>2
r8 <f a c e>4.-> <f a c d>2 r8 <f a c e>4-> <f a c d>8-.
r8 <a c e g>4-> <a c d f>8-. <e g b d>1
<g a c e>2 
a8^"allarg." g16 a <gis b>8 <fis a>16 <gis b>\!
<e c'>4._\fam 8 4 4 <f c'>2 2
<f d'>4. 8 <f e'>4 <f d'> <e d'>2 <e c'>
<e g>1_\spl <d fis> <<{f2 g4 f}\\{des1}>>
c4. b16( c) d4. c16( d) e( d) e4. f4. e16( d)
e8 8 d4~8 c16( b) c4
8_\decresc b16( c) 8 b16( c) c( b) c4.
4. b16( c) d4. c16( d) e( d) e4. f e16( d) 
e8 8 d4~8 c16( b c4)\!
\override TextSpanner.bound-details.left.text = "rall."
a4.\startTextSpan b16( a) aes2 g1_\ppp r r r\stopTextSpan\fine
}



lower = \relative c {
\armure
\lpiano_syle
s64 a4*15/16 \repeat unfold 13 {a4} 8 gis a ais \bar "||"
b4 b bes4 4 a a g g f f e e a e c a
f' f f f e e e e d d c c b b e e
b'4 b bes4 4 a a g g f f e e a e c a
f' f f f e e e e d d c c b b e e
b'4 b bes4 4 a a g g f f e e a e c a
f' f f f e e e e d d c c b b e e
b'2 bes a g4 g' f2 e a1
f1 e d,4 d'c, c' b,2 e
\bar "||" \break
s64 \grace {<a a,>16} 1*63/64~^\f 1
a4. gis16 a b4. a16 b c b c4. f4. e16 d
e8 a, d4~8 c16 b c4 a4. gis16 a b4. c16 d c b a4. d4 g,
c b a f' e es d g c,2 d e es4 d g,2 cis4 fis 
b, a d g, g'2 fis 
b, e4 a, d2 gis4 cis, fis e a, d d2 cis fis g a b
c d e1 1 2. e,,4->(
a4.) gis16 a b4. a16 b c b c4.
f4. e16 d e8 8 a4~8 g16 f g4
f2 e4 d c2 d c4 b a a'
g4. f16 e f8 a,e'4~8 d16 c d4
c2 b e4 d
c8 e d c d f e d e g f e e16 d e4.
e2 f g a b b,4 e R1
c4.^\mp b16 c d4. c16 d e d e4.
a4. g16 f g8 c, f4~8 e16 d e4 
b'2^\p a g f^\cresc e d c 
f4.-- e16 d e8 a, d4--~8 c16 b c4 r2
a'4.-- g16 f\! g8 c, f4--~8 e16 d e4
f4.-- e16 d e4 a,-- d2.-- g4
c2^\f b a d g,4 c2 cis4 d2 g, g'g,
R1*3 e'4 d c b <b b,>2 <bes bes,>
a,4.( gis16 a b4. a16 b c b c4.)
f4.( e16 d e8 a, d4~ 8 c16 b c4)
a4.(^\> gis16 a b4. c16 d c^\mp b a4.) <d f>2
<e g> f8 a g f g b a gis a c b a a16 gis a8~2 gis4
<<{c2 2 a c4 b}\\{a gis g fis f e d g,}>>
<c g'> <b gis'> <a a'> <g'a> 
<fis a e'>2 <f a es'>4 <e gis d'> <a e a,>1
<a, e'> <aes es'> <g d>2.\fermata
c,4->( <c'c'>)^"marcato \"Pugliese\""
\repeat unfold 34 {c,->( <c'c'>)}
c,->( a''8) g16 <f a> <e b'>8 <e a>16( <d b'>
<c g'>4.) 8 4 4 <c a'>2 2 4. 8 4 <c aes'>
<c g'>2 2 1 <c a'> <c aes'> <c c'>4
\repeat unfold 13 {c,->( <c'c'>)}
c,->( <c c'>1) 1~1~\fermata 1\fermata r \fine
}


piano = \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

\include "utils/full.ly"
% \include "utils/tangoBase.ly"
