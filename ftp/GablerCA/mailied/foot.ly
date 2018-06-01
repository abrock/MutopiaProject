% The score definition
\score {

<<

  \time 3/4

    \override Score.VerticalAxisGroup #'remove-first = ##t
  \new Staff <<
            \new Voice = "mel" {\transpose c \target{  \clef treble \key g \major \melody}}
            \new Lyrics = "one" \lyricsto mel \songtext
            \new Lyrics = "two" \lyricsto mel \songtexttwo
            \new Lyrics = "two" \lyricsto mel \songtextthree
  >>
  \new PianoStaff <<
    \new Staff \with {
      \consists #Merge_rests_engraver
    }
    <<
      \new Voice {\transpose c \target{  \key g \major \rh }}
    >>
      \new Dynamics {

  }
    \new Staff \with {
      \consists #Merge_rests_engraver
    }
    <<
      \new Voice {\transpose c \target{  \clef bass \key g \major \lh }}
    >>

  >>

>>

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}
}