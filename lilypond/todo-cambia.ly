% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

%\paper { indent = 0\cm}

\header {
  title = "Todo Cambia"
  subtitle = ""
  composer = "Julio Numhauser"
  tagline = ""

}

conductor_size = 16
individual_size = 20

\include "utils/macros.ly"


#(define ((double-time-signature a b c d) grob)
   (grob-interpret-markup grob
          (markup #:override '(baseline-skip . 2.5) #:number
                  (#:line ((#:fontsize -1 #:column (a b))
                           (#:fontsize -1 #:column (c d))
                           )))))

armure = {
\accidentalStyle modern-cautionary
\compressEmptyMeasures
\override Score.TimeSignature.stencil =
    #(double-time-signature  "3" "4" "6" "8")
\time 6/8
\tempo 4. = 78
\set Timing.beamExceptions = #'()
\key d \major
}


sop_music = {
a'4\mf a r8 8 4 4 r8 8 4 4 r8 8 g a b a g4
g g r8 a ais4 4 r8 8 b4 4 r8 8 a4 g g
r8 fis16\mp 16 8 g a g fis a g fis g fis r e16 e e8 fis g4~ 2.
b4. b cis cis fis,\mf a a2. \breathe
a4.\p a a a a g a4 g e
e4. e cis cis d \breathe d e4 g a
a\p a r8 8 4 4 r8 8 4 4 r8 8 g4. r8 g\mp fis
g4 fis8 g fis g~ g8 4. fis8 e fis4 e8 fis e fis~ fis d2 r8
\bar "||"
r8 d16\p d d8 e fis e d fis e d e d r8 cis16 16 8 d e4~ 2.\breathe
g4 g r8 a ais4 4 r8 8 b4 4 r8 8 a2.
a8\mp 8 r r4 a8 a4 r8 r4. 8 8 r8 r4 8 4 g \breathe g8\mf fis
g4 fis8 g fis g~ g8 4 r8 fis e fis4 e8 fis e fis8~ 8 e4~ 4 r8
a4.\mp a a a a2 g4 2 \breathe 8\mf fis
g4 fis8 g fis g~ 8 4 r8 fis e fis4 e8 fis e fis~ 8 e4~ 4 r8
d2.~ 4 b8 d d cis~ 8 a4~ 4.~ 4. r
g'2.~ 4 e8 g g fis~ 8 d4~ 4.~ 4. r
fis2.~\mp 4 8 8 8 e~ 8 4~ 4. \breathe e8 fis4 g8 a4
b2. ais4 8\mf 8 8 b~ 8 4~ 4. a r
\bar "||"
a4\mf a r8 8 4 4 r8 8 4 4 r8 8 g a b a g4
g g r8 a ais4 4 r8 8 b4 4 r8 8 a2.
a4.\mp a a a a g \breathe a4 g e
e4. e cis cis d \breathe d e4 g a
a a r8 8 4 4 r8 8 4 4 r8 8 g4. r8 g\mp fis
g4 fis8 g fis g~ g8 4. fis8 e fis4 e8 fis e fis~ fis d2 r8
\bar "||"
r8 d16 d d8 e fis e d fis e d e d r8 cis16 16 8 d e4~ 2.\breathe
g4 g r8 a ais4 4 r8 8 b4 4 r8 8 a4. r8 d,\mf d
d8 4 4 8 fis2 e8 d cis8 4 4 a'8 4 e \breathe g8 fis
g4 fis8 g4 fis8 g4. r8 fis e fis4 e8 fis e fis~ 8 e4 r8 d8 8
8 r8 8 8 8 fis~ 2 r8 d cis8 8 8 4 a'8 4 e r8 fis
g r8 8 fis g4 fis8 g4 r e8 fis8 8 8 8 r8 8 4 eis2 \breathe
\bar "||" \key fis \major
fis2.~\f 4 dis8 fis8 8 eis~ 8 cis~ 2~ 4. r b'2.~
4 gis8 b b ais~ 8 fis~ 2~ 4. r fis2.~ 4 dis8 fis8 8 eis~
8 cis~ 2~ 4. r b'2.~ 4 gis8 b b ais~ 8 fis~ 2~ 
4. r 
\repeat volta 2 {
r8 fis16\mf 16 8 gis ais gis fis ais gis fis gis fis r eis16 16 8 fis gis4~
2. r8 16 16 8 ais b ais gis b ais gis ais gis r fis16 16 8 ais gis4~ 
2. }
fis8\ff 4 8 4~ 4 r gis fis2 r4 \fine
}
	


sop_lyrics = \lyricmode {
\repeat unfold 26 la
la ra la la la ra la la la la la la la ra la la la
\repeat unfold 7 la

Cam -- bia lo pro -- fun -- do,
Cam -- bia el mo -- do de pen -- sar, pen -- sar,
To -- do cam -- bia, el cli -- ma,
Y Cam -- bia~el pas -- tor,
Y~a -- sí co -- mo to -- do cam -- bia,
Que yo cam -- bie no~es ex -- tra -- ño.

la ra la la la ra \repeat unfold 7 la ra la la la __
\repeat unfold 10 la

Cam -- bia el más fi -- no bri -- llan -- te,
Cam -- bia~el ni -- do~el pa -- ja -- ri -- llo,
Cam -- bia~el sen -- tir un a -- man -- te,

Cam -- bia~el rum -- bo~al ca -- mi -- nar
Y~a -- sí co -- mo to -- do cam -- bia,
Que yo cam -- bie no~es ex -- tra -- ño. 

Cam -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia, __
Cam -- bia, cam -- bia, ca -- am -- bia, to -- do cam -- bia -- a.

\repeat unfold 10 la ra la la la \repeat unfold 10 la

Cam -- bia~el sol de no -- che,
Cam -- bia la plan -- ta su ves -- tir, ves -- tir,
To -- do cam -- bia~el pe -- la -- je la fie -- ra, y~a -- sí
Y~a -- sí co -- mo to -- do cam -- bia,
Que yo cam -- bie no~es ex -- tra -- ño.

la ra la la la ra \repeat unfold 7 la ra la la la __
\repeat unfold 10 la

Pe -- ro no cam -- bia mi~a -- mor,
Por mas le -- jos que me~en -- cuen -- tre,
Ni~el re -- cuer -- do, ni~el do -- lor,
De mi pue -- blo~y de mi gen -- te,
Y lo que cam -- bió a -- yer,
Ten -- drá que cam -- biar ma -- ña -- na,
A -- sí co -- mo cam -- bio yo,
En és -- tas tie -- rras le -- ja -- nas.

Cam -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia, __

la ra la la la ra \repeat unfold 7 la ra la la la __
la ra la la la ra \repeat unfold 7 la ra la la la __
Cam -- bia, to -- do cam -- bia.
}


sop = \new Staff \with {instrumentName="Soprano"
  shortInstrumentName ="S."} <<
  \soprano_style
  \armure
  \relative c' {
\sop_music}
  \addlyrics {\sop_lyrics}
>>


alt_music = {
r8 d16\mf d d8 e fis e d fis e d e d r8 cis16 16 8 d e4~ 2.
r8 e16 16 8 fis g fis e g fis e fis e r d16 16 8 fis e4~ 2.
r8 d16\mp 16 8 e fis e d fis e d e d r cis16 cis cis8 d e4~ 2.
r8 e16 16 8 fis g fis e g fis e fis e r d16\mf 16 8 fis e4~ 2.
\breathe
fis4.\p fis d fis g e cis4 4 4
b4. b ais ais b \breathe b cis r8 d\mp d8
8 4 8 8 fis8~ 8 4. e8 d cis8 4 8 a' a~ a e4 r8 8\mp 8
4 8 8 d cis8~ 8 4. 8 8 d4 8 8 8 a8~ 8 2 r8
\bar "||"
r8 d16\p d d8 e fis e d fis e d e d r8 cis16 16 8 d e4~ 2.\breathe
r8 e16\mf 16 8 fis g fis e g fis e fis e \breathe r d16 16 8 fis e4~ 4. r8 d d8
4 8 8 8 fis8~ 8 4 r d8 cis8 8 8 8 a'8 8~ 8 e4~ 4 r8
r4 b\mp b r ais ais b2 4 a b a
fis'4. 4. d fis g2 e4 cis2 \breathe e8\mf 8
4 8 8 d cis~ 8 4 r8 8 8 d4 8 8 8 a~ 8 4~ 4 r8
d2.~ 4 b8 d d cis~ 8 a4~ 4.~ 4. r
g'2.~ 4 e8 g g fis~ 8 d4~ 4.~ 4. r
d2.~\mp 4 b8 d d cis~ 8 a4~ 4.~ 4. r
g'2.~ 4 e8\mf g g fis~ 8 d4~ 4.~ 4. r
\bar "||"
r8 d16\mf d d8 e fis e d fis e d e d r8 cis16 16 8 d e4~ 2.
r8 e16 16 8 fis g fis e g fis e fis e r d16 16 8 fis e4~ 2.
fis4.\mp fis d fis g e \breathe cis4 4 4
b4. b ais ais b \breathe b cis r8 d\mf d8
8 4 8 8 fis8~ 8 4. e8 d cis8 4 8 a' a~ a e4 r8 8\mp 8
4 8 8 d cis8~ 8 4. 8 8 d4 8 8 8 a8~ 8 2 r8
\bar "||"
r8 d16 d d8 e fis e d fis e d e d r8 cis16 16 8 d e4~ 2.\breathe
r8 e16\mf 16 8 fis g fis e g fis e fis e \breathe r d16 16 8 fis e4~ 4. r8 d\mf d8
d8 4 4 8 fis2 e8 d cis8 4 4 a'8 4 e \breathe g8 fis
g4 fis8 g4 fis8 g4. r8 fis e fis4 e8 fis e fis~ 8 a,4 r8 8 8
8 r8 8 8 8 8~ 2 r8 8 8 8 8 4 cis8 4 4 r8 d
e r8 8 8 4 cis8 4 r cis8 dis8 8 8 8 r8 8 cis4 2 \breathe
\bar "||" \key fis \major
cis2.~\f 4 8 8 8 8~ 8 b~ 2~ 4. r dis2.
cisis4 8 8 8 8~ 8 dis~ 2~ 4. r cis2.~ 4 8 8 8 8~
8 b~ 2~ 4. r dis2. cisis4 8 8 8 8~ 8 dis~ 2~
4. r \repeat volta 2 {
cis\mf cis cis cis cis eis \breathe
fis8 eis4 fis8 eis4 dis4. 4. cisis4. 4. dis dis
cis4 dis cis }
<cis ais>8\ff 4 <cis a>8 4~ 4 r <b dis> <ais cis>2 r4 \fine
}

alt_lyrics = \lyricmode {
la ra la la la ra la la la la la la
la ra la la la 
\repeat unfold 3 {la ra la la la ra la la la la la la la ra la la la}
Cam -- bia lo pro -- fun -- do,
Cam -- bia el mo -- do de pen -- sar, pen -- sar,
Cam -- bia~el cli -- ma con los a -- ños,
Cam -- bia~el pas -- tor su re -- ba -- ño,
Y~a -- sí co -- mo to -- do cam -- bia,
Que yo cam -- bie no~es ex -- tra -- ño. 

la ra la la la ra \repeat unfold 7 la ra la la la __
la ra la la la ra \repeat unfold 7 la ra la la la __
Cam -- bia~el más fi -- no bri -- llan -- te,
De ma -- no~en ma -- no su bri llo,
Cam -- bia el sen -- tir un a -- man -- te,

Cam -- bia~el rum -- bo~al ca -- mi -- nar
Y~a -- sí co -- mo to -- do cam -- bia,
Que yo cam -- bie no~es ex -- tra -- ño. 

Cam -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia. __

la ra la la la ra \repeat unfold 7 la ra la la la
la ra la la la ra \repeat unfold 7 la ra la la la

Cam -- bia~el sol de no -- che,
Cam -- bia la plan -- ta su ves -- tir, ves -- tir,
Cam -- bia~el pe -- la-- je la fie -- ra,
Cam -- bia~el ca -- be -- llo~el an -- cia -- no,
Y~a -- sí co -- mo to -- do cam -- bia,
Que yo cam -- bie no~es ex -- tra -- ño.

la ra la la la ra \repeat unfold 7 la ra la la la
la ra la la la ra \repeat unfold 7 la ra la la la

Pe -- ro no cam -- bia mi~a -- mor,
Por mas le -- jos que me~en -- cuen -- tre,
Ni~el re -- cuer -- do, ni~el do -- lor,
De mi pue -- blo~y de mi gen -- te,
Y lo que cam -- bió a -- yer,
Ten -- drá que cam -- biar ma -- ña -- na,
A -- sí co -- mo cam -- bio yo,
En és -- tas tie -- rras le -- ja -- nas.

Cam -- bia, to -- do cam -- bia, __
Ca -- am -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia, __
Ca -- am -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia, to -- do cam -- bia,
cam -- bia, to -- do cam -- bia y to -- do
cam -- bia, to -- do cam -- bia.

}


alt = \new Staff \with {instrumentName="Alto"
  shortInstrumentName ="A."} <<
  \alto_style
  \armure
  \relative c' {\alt_music}
  \addlyrics {\alt_lyrics}
>>


bass_music = {
fis,4.\mf d fis fis g g \breathe e4 cis a8 8
b4. b cis cis fis d cis8 b a2 \breathe
d4.\mp d fis a a a a8 g a b a4
r8 g16 16 8 a b b ais8 8 8 8 8 8 r b16\mf a g8 d cis4~ 4. r8 d\mp d
d4 8 8 8 fis8~ 2 e8 d cis8 4 8 a' a~ a e4 r8 \breathe g8 fis
g4 fis8 g fis g8~ 2 fis8 e fis4 e8 fis e fis~ fis e2 r8 
fis4.\p fis d d e e cis r8 8\mp 8
b4 8 8 8 ais8~ 8 4. 8 8 b4 8 8 8 e8~ 8 2 r8
\bar "||"
r8 fis16\p 16 8 g a g fis a g fis g fis r8 e16 16 8 fis g4 8 fis e d cis4\breathe
b4. b cis cis fis d cis2.
fis8\mp 8 r8 r4 d8 4 r8 r4. e8 8 r8 r4 cis8 4 2
r4 e e r cis cis d2 4 cis4. r8 d\mf 8
4 8 8 8 fis~ 8 4 r d8 cis8 8 8 4 a'8 4 e \breathe cis8\mf 8
b4 8 8 8 ais~ 8 4 r8 8 8 b4 8 4. a4 b cis
d2.~ 4 b8 d d cis~ 8 a4~ 4. e'8 d4 cis8 b4
e2. cis d a4 b cis
d2.~ 4 8 d d a~ 8 cis4~ 4.~ 4. r
e2.~ 4 cis8\mf 8 8 d~ 8 fis4~ 4. e r
\bar "||"
fis4.\mf d fis fis g g \breathe e4 cis a8 8
b4. b cis cis fis d cis 4. r8 d\mp d
d4 8 8 8 fis8~ 8 4. e8 d cis8 4 8 a' a~ a e4 r8 \breathe g8 fis
g4 fis8 g4 fis8 g4 4 r8 e fis8 4 e8 fis e fis4 e4. r8 
fis4. fis d d e e cis r8 8\mp 8
b4 8 8 8 ais8~ 8 4. 8 8 b4 8 8 8 e8~ 8 2 r8
\bar "||"
r8 fis16 16 8 g a g fis a g fis g fis r8 e16 16 8 fis g4 8 fis e d cis4\breathe
b4. b cis cis fis d cis4. r8 d\mf d
d8 4 4 8 fis2 e8 d cis8 4 4 a'8 4 e \breathe g8 fis
g4 fis8 g4 fis8 g4. r8 fis e fis4 e8 fis e fis~ 8 cis4 r8 fis8 8
8 r8 8 8 8 d~ 2 r8 fis e e e e4 8 4 a r8 8
b r8 8 8 4 ais8 4 r ais8 a8 8 8 8 r8 8 gis4 2 \breathe
\bar "||" \key fis \major
ais2.~\f 4 8 8 8 gis~ 8 eis~ 2 8 dis4 eis8 fis4 gis2.
eis4 8 8 8 8~ 8 ais~ 2 \breathe cis,4 dis eis fis8 ais4 8 4 8 4 8 4
gis8 eis4. 8 8 4 fis eis gis8 4 8 4 eis8 4 8 4 ais8 4. dis,8 8
cis4 dis eis \repeat volta 2 {
fis2.~\f 4 dis8 fis8 8 eis~ 8 cis~ 2~
4. r b'2.~ 4 gis8 b b ais~ 8 fis~ 2
eis4. r }
fis8\ff 4 dis8 4~ 4 r fis4 2 r4 \fine
}

bass_lyrics = \lyricmode {
  \repeat unfold 9 la ra
  \repeat unfold 7 la ra la
  \repeat unfold 7 la ra la la la
  la ra la la la ra \repeat unfold 7 la ra la la la
  Cam -- bia lo su -- per -- fi -- cial,
  Cam -- bia tam -- bién lo pro -- fun -- do,
  Cam -- bia~el mo -- do de pen -- sar,
  Cam -- bia to -- do~en és -- te mun -- do,
  Cam -- bia~el cli -- ma, y~el pas -- tor,
  Y~a -- sí co -- mo to -- do cam -- bia,
  Que yo cam -- bie no~es ex -- tra -- ño. 
  
la ra la la la ra \repeat unfold 7 la ra la la la la ra la la la
\repeat unfold 7 la
Cam -- bia el más fi -- no bri -- llan -- te,
Cam -- bia el sen -- tir, sen -- tir.
Cam -- bia~el rum -- bo~el ca -- mi -- nan -- te,
Aun -- que~és -- to le cau -- se da -- ño,
Y~a -- sí co -- mo to -- do cam -- bia,
Que yo cam -- bie no~es ex -- tra -- ño.

Cam -- bia, to -- do cam -- bia,
Cam -- bia, Cam -- bia, Cam -- bia, to -- do Cam bia,
Cam -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia -- a.

\repeat unfold 9 la ra \repeat unfold 7 la
Cam -- bia~el sol en su ca -- rre -- ra,
Cuan -- do la no -- che sub -- sis -- te,
Cam -- bia la plan -- ta~y se vis -- te
de ver -- de~en la pri -- ma -- ve -- ra.
Cam -- bia la fie -- ra y~a -- sí,
Y~a -- sí co -- mo to -- do cam -- bia,
Que yo cam -- bie no~es ex -- tra -- ño. 

la ra la la la ra \repeat unfold 7 la ra la la la
la ra \repeat unfold 10 la

Pe -- ro no cam -- bia mi~a -- mor,
Por mas le -- jos que me~en -- cuen -- tre,
Ni~el re -- cuer -- do, ni~el do -- lor,
De mi pue -- blo~y de mi gen -- te,
Y lo que cam -- bió a -- yer,
Ten -- drá que cam -- biar ma -- ña -- na,
A -- sí co -- mo cam -- bio yo,
En és -- tas tie -- rras le -- ja -- nas.

Cam -- bia, to -- do cam -- bia, cam -- bia, cam -- bia,
Ca -- am -- bia, to -- do cam -- bia,
Y to -- do cam -- bia, cam -- bia, to -- do cam -- bia, to -- do cam -- bia,
Y to -- do cam -- bia, cam -- bia, to -- do cam -- bia, to -- do cam -- bia,
Y to -- do cam -- bia, to -- do cam -- bia, __
Cam -- bia, to -- do cam -- bia -- a,
Cam -- bia, to -- do cam -- bia.
}



bass = \new Staff \with {instrumentName="Bass"
  shortInstrumentName ="B."} <<
  \hommes_style
  \armure
  \relative c' {\bass_music}
  \addlyrics {\bass_lyrics}
>>


\include "utils/books.ly"