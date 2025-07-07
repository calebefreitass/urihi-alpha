
if(place_meeting(x,y,obj_parente_personagens))
{
	
	audio_play_sound(snd_cobra,1,0);
	obj_cobra.estado = "atk";
	obj_cobra.direc = 1; 
	
	instance_destroy();	
}





