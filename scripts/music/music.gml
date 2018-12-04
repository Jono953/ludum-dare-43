audio_sound_gain(argument0,0.4,0)
if audio_is_playing(penbox55) and argument0 != penbox55{
	audio_stop_sound(penbox55)
}
if audio_is_playing(penbox56) and argument0 != penbox56{
	audio_stop_sound(penbox56)
}
if audio_is_playing(penbox57) and argument0 != penbox57{
	audio_stop_sound(penbox57)
}
if audio_is_playing(penbox57_2) and argument0 != penbox57_2{
	audio_stop_sound(penbox57_2)
}
if !audio_is_playing(argument0){
audio_play_sound(argument0,1,0)	
}