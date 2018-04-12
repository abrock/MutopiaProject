\version "2.19.65"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    %line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
   %page-count = 5

   system-system-spacing =
    #'(
       %(basic-distance . 0)
       %(minimum-distance . 0)
       %(padding . 5)
       %(stretchability . 20)
      )
}

%#(set-default-paper-size "a4")

#(set-global-staff-size 18)

\include "articulate.ly"

\header {
        title = "Praktische Schule des italienischen Gesangs"
        subtitle = "Lektion II: Quartensprünge"
        mutopiatitle = "Lektion II: Quartensprünge (Praktische Schule des italienischen Gesangs)"
	composer = "Nicola Vaccai (1790 - 1848)"

        mutopiacomposer = "VaccaiN"

        opus = "Praktische Schule des italienischen Gesanges"
        date = "1832"
        mutopiainstrument = "Voice and piano"
        style = "Classical"
        source = "Liepzig: C. F. Peters Plate 7619"
        % "http://ks.imslp.info/files/imglnks/usimg/c/c6/IMSLP240592-SIBLEY1802.15813.984f-39087009927650score.pdf"
        % publish date estimated at 1880
        maintainer = "Alexander Brock"
        maintainerEmail = "alexander@lunar-orbit.de"

        license = "Creative Commons Attribution-ShareAlike 4.0"
        footer = "Mutopia-2018/04/12-2199"
        copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
        tagline = ##f
}

melody = \relative c' {
  \time 2/4
  r4 d8 g |
  d g e a |
  g d16 r a'8 e |
  a e a a |
  b fis d g |
  d g e a |
  g d16 r e8 a-> |
  fis b-> g c-> |
  a4 d8 a |
  b g a e16([ fis)] |
  g8 r e a-> |
  fis b-> g c-> |
  a4 d8 a |
  b g a e16([ fis)] |
  g4 r \bar "|."
}

rh = \relative c' {
  << { \melody } \\
     {s4 b4 |
     b c |
     b s |
     s s |
     s b |
     b c |
     b s |
     s s |
     s s8 fis' |
     s8 b, c4 |
     b8 s s4 |
     s s |
     s s8 fis' |
     s8 b, c4 |
     b4 s |
     }
  >>
}

lh = \relative c {
g16( b d g) g,(b d g) |
g,(b d g) g,( c d fis) |
g,(b d g) c,( e a c) |
c,( e a c) c,( e a c) |
b,( dis fis b) g,(b d g) |
g,(b d g) g,( c d fis) |
g,( b d g) c,( e c' a) |
d,( fis d' b) e,( g e' c) |
fis,( a fis' d) fis,( a d8) |
g,16 b e,8 <e c> <a d,> |
g,16( b d g) c,( e c' a) |
d,( fis d' b) e,( g e' c) |
fis,( a fis' d) fis,( a d8) |
g,16 b e,8 <e c> <a d,> |
<g g,>4 r
}

songtext =  \lyricmode {
Wie -- der stößt vom Land der Schif -- fer, traut des
fal -- schen Mee -- res Wo -- gen, ob sie ihn auch oft be -- tro -- gen:
von Ge -- fah -- ren rings um -- droht,
trotzt er mu -- tig Sturm und Tod;
von Ge -- fah -- ren rings um -- droht,
trotzt er mu -- tig Sturm und Tod.
}


% The score definition
\score {

<<

  \time 2/4

    \override Score.VerticalAxisGroup #'remove-first = ##t
  \new Staff <<
            \new Voice = "mel" { \clef treble \key g \major \autoBeamOff \melody}
            \new Lyrics = "one" \lyricsto mel \songtext
  >>
  \new PianoStaff <<
    \new Staff \with {
      \consists #Merge_rests_engraver
    }
    <<
      \new Voice { \key g \major \rh }
    >>

    \new Staff \with {
      \consists #Merge_rests_engraver
    }
    <<
      \new Voice { \clef bass \key g \major \lh }
    >>

  >>

>>

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}
}

\score {

<<

  \time 3/4

    \override Score.VerticalAxisGroup #'remove-first = ##t
  \new Staff <<
        \set Staff.midiInstrument = #"choir aahs"
            \new Voice = "mel" { \clef bass \key g \major \melody}
            \new Lyrics = "one" \lyricsto mel \songtext
  >>
  \new PianoStaff <<
    \new Staff
    <<
      \set Staff.midiInstrument = #"acoustic grand"
      \new Voice { \key g \major \rh }
    >>

    \new Staff
    <<
      \set Staff.midiInstrument = #"acoustic grand"
      \new Voice { \clef bass \key g \major \lh }
    >>

  >>

>>

\midi {
  \tempo 4 = 65
  \context {
    \Score
    midiMinimumVolume = #0.8
    midiMaximumVolume = #0.8
  }
}

}
