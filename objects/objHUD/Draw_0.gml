/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
draw_set_color(c_white)
draw_set_font(fontHud)
draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+84,"Health: "+string(objPlayer.hp))
draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+94,"Lives: "+string(life))
draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+110,"Suit Energy: "+string(objPlayer.suitHealth))
draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+125,"Healthup: "+string((objPlayer.inventory[?"healthup"])))
draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+140,"Suitup: "+string((objPlayer.inventory[?"suitup"])))
draw_text(camera_get_view_x(view_camera[0])+74,camera_get_view_y(view_camera[0])+160,"Score: "+string(scoresofarfar))
}