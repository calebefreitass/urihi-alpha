estado = "fora";
//window_set_fullscreen(true);
global.start = false;
//criando transição de entra
layer_sequence_create("Transicao",camera_get_view_width(view_camera[0]) /2 ,camera_get_view_height(view_camera[0]) /2 , seq_transicao_out);





