\version "2.9.5"
\header {
	filename="watermelon_man.ly"
	title="Watermelon Man"
	subtitle=""
	composer="Herbie Hancock"
	copyright=""
	style="Jazz"

	enteredby="Mark Veltzer"
	maintainerEmail="mark@veltzer.net"
	footer=""
	tagline="generated at http://www.veltzer.net by Mark Veltzer <mark@veltzer.net>"
}

tune={
	\key c \major
	\time 4/4

	\repeat "volta" 2 {
		ees''1 ~ | ees''4 f'8 f'8 <aes' c''> ( <bes' d''>4-. ) f'8 ~ | f'1 ~ | f'2 r2 | \break
		f''1 ~ | f''4 f'8 f'8 <aes' c''> ( <bes' d''>4-. ) f'8 ~ | f'1 ~ | f'2 r2 | \break
		r4 c''8 ( c''8 g''4 a''4 | aes''8 g''8 f''8 d''8 f''4 g''-. ) |
		r4 c''8 ( c''8 g''4 a''4 | aes''8 g''8 f''8 d''8 c''4 d''-. ) | \break
		r4 c''8 ( c''8 g''4 aes''4 | f''-. ) f'8 f'8 <aes' c''> ( <bes' d''>4-. ) f'8 ~ | f'1 | r1 \bar "|."
	}
}

harmony=\chords {
	\repeat "volta" 2 {
		f1*4:7 | \break
		bes1*2:7 | f1*2:7 | \break
		c1:7 | bes:7 | c:7 | bes:7 | \break
		c:7 | bes:7 | f1*2:7 | \break
	}
}

\score {
	<<
		\context ChordNames \harmony
		\context Staff \tune
	>>
	\midi {
		\tempo 4=140
	}
	\layout {}
}
