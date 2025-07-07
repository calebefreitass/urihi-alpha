if (obj_vida.alarm[2]<= 0 and global.vida_player > 0 and obj_parente_inimigo.estado != "die")
{
	global.vida_player -= 1;
	obj_vida.alarm[2] = 180;	//	3 segundos sem tomar dano
	audio_play_sound(sd_player_damage, 1, 0);	
}




















