if(global.vida_player < 4 and estado == "consumivel")
{
	estado = "consumida";
	audio_play_sound(sd_coletando_tucuma, 1,0);
	image_index = 0;
	global.vida_player += 1;
}






