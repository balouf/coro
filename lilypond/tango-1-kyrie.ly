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

ffp = \markup {\dynamic ff \italic pesante}
pl = \markup {\dynamic p \italic legato}
mfa = \markup {\dynamic mf \italic articolato}


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
  g4.(\< f16 g) aes2\!
  r2 r8 c4->\f 8
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
  es\cresc d es4 c8-. aes'4.-- g16 f
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
  es2. d4 2\< f
  r8 c4->\f b16( c) d4. c16 d
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
  g2\cresc r8 f4-> d'8~ 8 c8 4 r8 bes4-> a8
  aes2 r8 fis4-> aes8~ 8 g8 4 r8 f4-> 8
  g2 r8 a4-> aes8~ 8 g8 4 r8 f4-> 8 
  g2 r8 fis4-> aes8~ 8 g8 4~ 2
  r8 c4 d16 c bes4 aes
  r8 d4 c16( b) c8 bes16 a bes8 aes16( g)
  r8 c4 d16 es d4. es16( d) des2 c4 des
  r8 c4 d16\( c\) bes4 aes
  r8 bes4-> 8-. 4-- a--
  aes2. ces4 bes4.(\< a16 bes) b2\!
  r2 r8 c4->\f 8
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
  2\cresc r8 4-> 8~ 8 8 4 r8 4-> 8
  2 r8 4-> 8~ 8 8 4 r8 4-> 8
  2 r8 4-> 8~ 8 8 4 r8 4-> 8
  2 r8 4-> 8~ 8 8 bes'4-- aes-- g-- \breathe
  f es d bes g' f e c \breathe
  f f bes,4 4 es2-- e-- \breathe
  f4 es d bes r8 g'4-> 8-. 4-- fis--
  f2 bes, es\< d
  r8 c4->\f b16( c) d4. c16 d
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
  Ky -- ri -- e e _
}



bass = \new Staff \with {instrumentName="Bass"
  shortInstrumentName ="B."} <<
  \hommes_style
  \armure
  \relative c' {\bass_music}
  \addlyrics {\bass_lyrics}
>>


\include "utils/booksq.ly"
