#(set-global-staff-size conductor_size)
\book {
  \score {
        \layout {
  \context {
    \Staff
    \RemoveAllEmptyStaves
  }
}
<<
    \new ChoirStaff
    <<
      \sop
      \alt
      \ten
      \bass
    >>
>>
  }
   \score {
    \unfoldRepeats
    <<
      \sop
      \alt
      \ten
      \bass
      \piano
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "-full"
  \score {
        \layout {
  \context {
    \Staff
    \RemoveAllEmptyStaves
  }
}
<<
    \new ChoirStaff
    <<
      \sop
      \alt
      \ten
      \bass
    >>
    \piano
>>
  }
}


\book {
  \bookOutputSuffix "-piano"
  \score {
        \layout {
  \context {
    \Staff
    \RemoveAllEmptyStaves
  }
}
 \piano
  }
}


\book {
  \bookOutputSuffix "-bass"
  \score {
    \unfoldRepeats
    <<
      \bass
      \piano
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "-sop"
  \score {
    \unfoldRepeats
    <<
      \sop
      \piano
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "-alt"
  \score {
    \unfoldRepeats
    <<
      \alt
      \piano
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "-ten"
  \score {
    \unfoldRepeats
    <<
      \ten
      \piano
    >>
    \midi {}
  }
}

