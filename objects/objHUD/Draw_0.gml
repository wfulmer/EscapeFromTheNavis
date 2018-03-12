/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
draw_set_color(c_white)
draw_set_font(fontHud)
draw_healthbar(camera_get_view_x(view_camera[0])+10, camera_get_view_y(view_camera[0])+18, camera_get_view_x(view_camera[0])+100, camera_get_view_y(view_camera[0])+30, objPlayer.hp, $FF000000 & $FFFFFF, c_red, c_lime, 0, true, true);
draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+2,"Health: "+string(objPlayer.hp))
draw_healthbar(camera_get_view_x(view_camera[0])+10, camera_get_view_y(view_camera[0])+45, camera_get_view_x(view_camera[0])+100, camera_get_view_y(view_camera[0])+55, objPlayer.suitHealth, $FF000000 & $FFFFFF, c_aqua, c_blue, 0, true, true);
draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+30,"Suit Energy: "+string(objPlayer.suitHealth))
}

if(game_over = true){
	draw_text_color(camera_get_view_x(view_camera[0])+416,camera_get_view_y(view_camera[0])+288,"GAME OVER\nPress Alt + R to return to menu",c_black,c_black,c_black,c_black,1);
}