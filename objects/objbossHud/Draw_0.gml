/// @description Insert description here
// You can write your code in this editor
view_x=camera_get_view_x(view_camera[0]);
view_y=camera_get_view_y(view_camera[0]);

xone=view_x+((view_wport[0]/2)-300)//TODO FIX ME


xtwo=view_x+((view_wport[0]/2)+300)//TODO FIX ME

if(boss_alive||boss_hiding)
{
draw_healthbar(view_x + 300 ,view_y+10, view_x + 600,view_y+40,objbossHud.boss_hp, $FF000000 & $FFFFFF, c_red, c_lime, 0, true, true);
}