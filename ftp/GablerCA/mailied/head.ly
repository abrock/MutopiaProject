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
        title = "Mailied"
        %subtitle = "Part II: 22. Aria (Raphael)"
        %piece = "Part II: 22. Aria (Raphael)"
        %mutopiatitle = "Air (Raphael)"
	%composer = "F.J.Haydn (1732 - 1809)"

        %mutopiacomposer = "HaydnFJ"

        %opus = "Hob. XXI:2"
        %date = "1797 - 1798"
        %mutopiainstrument = "Voice (Bass) and piano"
        %style = "Classical"
        %source = "Liepzig: C. F. Peters Plate 7619"
        % "http://hz.imslp.info/files/imglnks/usimg/7/71/IMSLP35013-PMLP40341-Haydn-SchoepfungVSpeters.pdf page 82ff"
        % publish date estimated at 1880
        maintainer = "Alexander Brock"
        maintainerEmail = "alexander@lunar-orbit.de"

        license = "Creative Commons Attribution-ShareAlike 4.0"
        footer = "Mutopia-2018/05/31-2199"
        copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
        tagline = ##f
}

melody = \relative c' {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 105
  \autoBeamOff
  \partial 4. d'8 d d |
  d4 b8 g a b  |
  g4r8 d g b  |
  a[( d]) d fis e fis | 
  d4r8 d d d  |
  d4 b8 g a b  |
  g4r8 d g b  |
  a[( d]) d fis e fis | 
  d4r8 d e fis  |
  g[( g,]) g g a b  |
  c4r8 c d e  |
  e[( a,]) a a d fis, | 
  g4r8
  \bar "|."
}

rh = \relative c' {
d8 d d |
\set Timing.beamExceptions = #'()
\set Timing.baseMoment = #(ly:make-moment 1/4)
\set Timing.beatStructure = 1,1,1
<g, b>8 d' <g, b> d' <fis, c'> d'  |
<g, b> d' <g, b> d' <g, b> d'  |
<d fis> a <d fis> a <cis g'> a  |
<d fis> a <d fis> <fis, a d>[ <g b d> <a c d>]  |
<g b> d' <g, b> d' <fis, c'> d'  |
<g, b> d' <g, b> d' <g, b> d'  |
<d fis> a <d fis> a <cis g'> a  |
<d fis> a <d fis> d[ <cis e> <c fis>]  |
<b g'>4. <b g'>8[ <c a'> <d b'>]  |
<c g' c>4r8 <g' c>[ <f b d> <e c' e>8] |
r <c fis!>[ <c fis> <c fis>] <a c fis> <a c fis>  |
<b d g>4r8
}

lh = \relative c {
r8 r4 |
<g d'>2 <d d'>4  |
<g d'>r r  |
a2 a,4  |
d r r  |
<g d'>2 <d d'>4  |
<g d'>r r  |
a2 a,4  |
d r r  |
r8 g[( g']) g-.[ fis( f)]  |
e[( dis e]) e[ d c]  |
d2 d,4  |
g r8
}

songtext =  \lyricmode {
%\override LyricText.self-alignment-X = #LEFT
Wie herr -- lich leuch -- tet mir die Na -- tur!
Wie glänzt die Son -- ne, wie lacht die Flur!
Es drin -- gen Blü -- ten aus je -- dem Zweig.
und tau -- send Stim -- men aus dem Ge -- sträuch,
und Freud und Won -- ne aus je -- der Brust,
o Erd, o Son -- ne, o Glück, o Lust!
}


songtexttwo =  \lyricmode {
%\override LyricText.self-alignment-X = #LEFT
O Lieb, o Lie -- be, so gol -- den schön,
wie Mor -- gen -- wol -- ken auf je -- nen Höhn,
du seg -- nest herr -- lich das fri -- sche Feld,
im Blü -- ten dam -- pfe die vol -- le Welt.
O Mäd -- chen, Mäd -- chen, wie lieb ich dich,
wie blickt dein Au -- ge, wie liebst du mich!
}


songtextthree =  \lyricmode {
%\override LyricText.self-alignment-X = #LEFT
So liebt die Ler -- che Ge -- sang und Luft!
und Mor -- gen -- blu -- men den Him -- mels -- duft;
wie ich dich lie -- be mit war -- men Blut,
die du mir Ju -- gend und Freud und Mut
in neu -- en Lie -- dern und Tän -- zen gibst!
Sei e -- wig glück -- lich, wie du mich liebst.
}