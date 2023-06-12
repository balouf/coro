% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

%\paper { indent = 0\cm}

\header {
  title = "Himno Nacional Argentino"
  subtitle = ""
  composer = "Blas Perera / Vincente Lopez"
  tagline = ""

}

conductor_size = 20
individual_size = 20

\include "utils/macros.ly"



armure = {
\accidentalStyle modern-cautionary
\compressEmptyMeasures
\time 4/4
\tempo "Moderato" 4 = 76
\set Timing.beamExceptions = #'()
\key bes \major
}


sop_music = {
  r2 r8 f g a 
  bes4 bes8. d16 c8( bes) a8. g16
  f4~\( 8 d bes\) r d8. f16
  es4 8. g16 f4 g8. a16
  bes4 r r8. bes,16 8. c16
  d4 8. 16 8( f) e8. g16
  g4 f r f8. a16
  g4 8. bes16 e,4 8. g16
  f4 r r2 r1 r2 r8 f g a
  bes4 f8. 16 ges8( f) es8. des16
  des2\( c8\) r f8. 16 
  bes4  c8. 16 des4 e,8. 16
  f4 r r f8. 16 bes4 8. 16 c4 8. 16
  des4 bes r f8. 16 
  bes4 8. 16 c4 8. 16
  des4( bes) r bes8. des16
  des8( c) c bes c( bes) a bes f4
  r r8 f g a
  bes4 8. a16 g8( f) es d f4 es r es8. g16
  f8( bes) d, f f8.( es16) d8 c d2 r8 f g a
  bes4 8. a16 g8( f) es8. d16 f4 es r es8. g16
  f8( bes8) 8 d8 8.( c16) bes8 a bes2 r R1*4 r1\fermata
  \bar "||"
  \tempo "Allegro vivace" 4=126
  R1*3
  r2 r4 f8 16 f bes4 f d f bes4 4 r
  f8. 16 bes4 f d f bes2 r4
  bes8. 16 c4 bes a g f2~ 4\fermata
  \tempo "lento" 4=66 bes8. 16
  a4 g8. f16 8( es8) 8. 16
  d4 f\turn c8\fermata 
  \tempo "Vivace" 4=144 f[( g) a]
  bes4 8 8 a4 8 8 bes4 r
  es,4. 8 8( d) c bes f'4 a8 8 bes4 r
  es,4. 8 8( d) c bes f'4 8 8 bes2 r r1 r1
\fine
}
	


sop_lyrics = \lyricmode {
  O -- id, mor -- ta -- les,
  el gri -- to sa -- gra __ _ -- do:
  Li -- ber -- tad, li -- ber -- tad, li -- ber -- tad.
  
  O -- id el rui -- no de ro -- tas ca -- de -- nas,
  Ved en tro -- no~a la no -- ble~i -- gual -- dad.
  
  Ya __ _ su tro -- no dig -- ni -- si mo~a -- brie -- ron
  Las Pro -- vin -- cias U -- ni -- das del Sud.
  
  Y los li -- bres del mun -- do res -- pon -- den:
  Al gran pue -- blo~Ar -- gen -- ti -- no Sa -- lud...
  Al gran pue -- blo~Ar -- gen -- ti -- no Sa -- lud...
  
  Y __ _ los li -- bres del mun -- do res -- pon -- den:
  Al gran pue -- blo~Ar -- gen -- ti -- no Sa -- lud...
  Y __ _ los li -- bres del mun -- do res -- pon -- den:
  Al gran pue -- blo~Ar -- gen -- ti -- no Sa -- lud...
  
  Se -- an e -- ter -- nos los lau -- re -- les
  Que su -- pi -- mos con -- se -- guir
  Que su -- pi -- mos con -- se -- guir __
  Co -- ro -- na -- dos de glo -- ria vi -- va __ _ mos
  O __ ju -- re -- mos con glo -- ria mo -- rir.
  O ju -- re -- mos con glo -- ria mo -- rir.
  O ju -- re -- mos con glo -- ria mo -- rir.
}


sop = \new Staff \with {instrumentName=""
  shortInstrumentName =""} <<
  \soprano_style
  \armure
  \relative c' {
\sop_music}
  \addlyrics {\sop_lyrics}
>>

#(set-global-staff-size conductor_size)
\book {
  \score {
        \layout {
  \context {
    \Staff
    \RemoveEmptyStaves
  }
}
      \sop

  }
  \score {
    \unfoldRepeats
    <<
      \sop
    >>
    \midi {}
  }
}
