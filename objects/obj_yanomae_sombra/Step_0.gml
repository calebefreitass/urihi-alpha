//SISTEMA DE PAUSE
if(global.pause){
	//parando animações
	image_speed = 0;
	exit;
} else{ 
	//retornando animações
	image_speed = 1;
	}
	
image_alpha -= vel;

if(image_alpha <= 0)
{
	instance_destroy();	
}






