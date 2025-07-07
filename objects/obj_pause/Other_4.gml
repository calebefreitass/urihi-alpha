if(instance_exists(obj_yanomae))
{
	if(global.start == false)
	{
		obj_yanomae.persistent = true;	
	}
	else if (global.start == true)
	{
		game_restart();
		global.start = false;
	}
}
else if(instance_exists(obj_ninan))
{
	if(global.start == false)
	{
		obj_ninan.persistent = true;	
	}
	else if (global.start == true)
	{
		game_restart();
		global.start = false;
	}
}








