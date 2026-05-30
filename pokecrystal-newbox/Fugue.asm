Music_Fugue:
	channel_count 4
	channel 1, Music_Fugue_Ch1
	channel 2, Music_Fugue_Ch2
	channel 3, Music_Fugue_Ch3
	channel 4, Music_Fugue_Ch4

Music_Fugue_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	rest 2
	octave 3
	vibrato 3, 1, 1
	note G#, 2
	note A#, 1
	note G#, 1
	note F#, 1
	note G#, 1
	octave 4
	note F_, 1
	rest 1
	note C#, 1
	rest 1
	octave 3
	note G#, 2
	note F#, 1
	note F_, 1
	note F#, 1
	rest 1
	octave 4
	note D#, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	octave 3
	note D#, 1
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note C#, 1
	rest 1
	octave 4
	note C#, 1
	note C_, 1
	note C#, 1
	note D#, 1
	note F_, 1
	note F#, 1
	note G#, 1
	note G_, 1
	note F_, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note F_, 1
	note D#, 1
	note F_, 1
	note F_, 2
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 1
	sound_loop 0, .mainLoop

Music_Fugue_Ch2:
	note_type 12, 15, 8
.mainLoop:
	rest 16
	rest 16
	rest 2
	octave 3
	note C#, 2
	note F_, 1
	note D#, 1
	note C#, 1
	note D#, 1
	octave 4
	note C_, 1
	octave 3
	rest 1
	note G#, 1
	rest 1
	note D#, 2
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 2
	sound_loop 0, .mainLoop

Music_Fugue_Ch3:
	note_type 12, 1, 0
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, .mainLoop

Music_Fugue_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, .mainLoop
