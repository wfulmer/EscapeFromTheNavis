/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
draw_set_color(c_white)
draw_set_font(fontHud)
draw_healthbar(camera_get_view_x(view_camera[0])+10, camera_get_view_y(view_camera[0])+10, camera_get_view_x(view_camera[0])+100, camera_get_view_y(view_camera[0])+30, objPlayer.hp, $FF000000 & $FFFFFF, c_red, c_lime, 0, true, true);
draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+10,"Health: "+string(objPlayer.hp))
//draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+94,"Lives: "+string(life))
draw_healthbar(camera_get_view_x(view_camera[0])+10, camera_get_view_y(view_camera[0])+35, camera_get_view_x(view_camera[0])+100, camera_get_view_y(view_camera[0])+55, objPlayer.suitHealth, $FF000000 & $FFFFFF, c_aqua, c_blue, 0, true, true);
draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+35,"Suit Energy: "+string(objPlayer.suitHealth))
//draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+125,"Healthup: "+string((objPlayer.inventory[?"healthup"])))
//draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+140,"Suitup: "+string((objPlayer.inventory[?"suitup"])))
//draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+160,"Score: "+string(scoresofarfar))
}