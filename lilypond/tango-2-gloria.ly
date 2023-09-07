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
  
}



bass = \new Staff \with {instrumentName="Bass"
  shortInstrumentName ="B."} <<
  \hommes_style
  \armure
  \relative c' {\bass_music}
  \addlyrics {\bass_lyrics}
>>


\include "utils/booksq.ly"
