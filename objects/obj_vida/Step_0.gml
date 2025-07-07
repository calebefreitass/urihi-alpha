// FAZENDO O PERSONAGEM PISCAR AO RECEBER DANO
if(instance_exists(obj_yanomae) or instance_exists(obj_ninan))
{
if(global.personagem == obj_yanomae)
{
	if(alarm[2] > 0)
	{
		if(obj_yanomae.image_alpha >= 1)
		{
			obj_yanomae.alpha_hit = -0.25;
		}
		else if (obj_yanomae.image_alpha <= 0 )
		{
		obj_yanomae.alpha_hit = 0.25;	
	}
	
		obj_yanomae.image_alpha += obj_yanomae.alpha_hit;
	
	}
	else 
	{
		obj_yanomae.image_alpha = 1;	
	}
}
else if(global.personagem == obj_ninan)
{
	if(alarm[2] > 0)
	{
		if(obj_ninan.image_alpha >= 1)
		{
			obj_ninan.alpha_hit = -0.25;
		}
		else if (obj_ninan.image_alpha <= 0 )
		{
		obj_ninan.alpha_hit = 0.25;	
	}
	
		obj_ninan.image_alpha += obj_ninan.alpha_hit;
	
	}
	else 
	{
		obj_ninan.image_alpha = 1;	
	}
}

}


















