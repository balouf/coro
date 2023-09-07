
emph = {
  \override Lyrics.LyricText.font-shape = #'italic
  % \override Lyrics.LyricText.font-series = #'bold
}

normal = {
  \revert Lyrics.LyricText.font-shape
  % \revert Lyrics.LyricText.font-series
}


pl = \markup {\dynamic p \italic legato}
pll = \markup {\dynamic p \italic legatissimo}
mpe = \markup {\dynamic mp \italic espressivo}
mfa = \markup {\dynamic mf \italic articolato}
mfll = \markup {\dynamic mf \italic legatissimo}
fa = \markup {\dynamic f \italic articolato}
ffp = \markup {\dynamic ff \italic pesante}


soprano_style = {
  \set Staff.midiInstrument = "synth voice"
  \set Staff.midiMinimumVolume = #0.7
  \set Staff.midiMaximumVolume = #0.9
  \clef treble
  \accidentalStyle modern-cautionary

}


alto_style = {
  \set Staff.midiInstrument = "synth voice"
  \set Staff.midiMinimumVolume = #0.7
  \set Staff.midiMaximumVolume = #0.9
  \clef treble
  \accidentalStyle modern-cautionary

}

tenor_style = {
  \set Staff.midiInstrument = "synth voice"
  \set Staff.midiMinimumVolume = #0.7
  \set Staff.midiMaximumVolume = #0.9
  \clef treble
  \accidentalStyle modern-cautionary

}


hommes_style = {
  \set Staff.midiInstrument = "synth voice"
  \set Staff.midiMinimumVolume = #0.7
  \set Staff.midiMaximumVolume = #0.9
  \clef bass
  \accidentalStyle modern-cautionary

}

lpiano_syle = {
\set Staff.midiInstrument = "acoustic grand"
\set Staff.midiMinimumVolume = #0.3
\set Staff.midiMaximumVolume = #0.5
\clef bass
\accidentalStyle modern-cautionary
}

rpiano_syle = {
\set Staff.midiInstrument = "acoustic grand"
\set Staff.midiMinimumVolume = #0.3
\set Staff.midiMaximumVolume = #0.5
\clef treble
\accidentalStyle modern-cautionary
}