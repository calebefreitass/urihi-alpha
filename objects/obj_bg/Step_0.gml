var _bg1 = layer_get_id("Background01");
var _bg2 = layer_get_id("Background02");
var _bg3 = layer_get_id("Background03");
var _bg4 = layer_get_id("Background04");
var _bg5 = layer_get_id("Background05");
var _bg6 = layer_get_id("Background06");
var _bg7 = layer_get_id("Background07");
var _bg8 = layer_get_id("Background08");

layer_x(_bg1, lerp(0, camera_get_view_x(view_camera[0]), 0.9) );	//céu
layer_x(_bg2, lerp(0, camera_get_view_x(view_camera[0]), 0.8) );	//tronco
layer_x(_bg3, lerp(0, camera_get_view_x(view_camera[0]), 0.7) );	//mato
layer_x(_bg4, lerp(0, camera_get_view_x(view_camera[0]), 0.6) );	//tronco
layer_x(_bg5, lerp(0, camera_get_view_x(view_camera[0]), 0.5) );	//folha e cipó
layer_x(_bg6, lerp(0, camera_get_view_x(view_camera[0]), 0.3) );	//tronco perto
layer_x(_bg7, lerp(0, camera_get_view_x(view_camera[0]), 0.35) );	//folha e cipó perto
layer_x(_bg8, lerp(0, camera_get_view_x(view_camera[0]), 0.2) );	//mato perto









