//FAZER O INIMIGO PISCAR AO RECEBER UM ATAQUE
if (alarm[10] > 0)
{
	gpu_set_fog(true, c_white, 0, 0);	
	draw_self();
	gpu_set_fog(false, c_white,0,0);
} else {
	draw_self();
}









