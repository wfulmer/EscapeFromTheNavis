/// @description Insert description here
// You can write your code in this editor
view_x=camera_get_view_x(view_camera[0]);
view_y=camera_get_view_y(view_camera[0]);

xone=view_x+((view_wport[0]/2)-300)


xtwo=view_x+((view_wport[0]/2)+300)

if(boss_alive||boss_hiding)
{
draw_healthbar(xone,view_y+10,xtwo,view_y+40,objbossHud.boss_hp, $FF000000 & $FFFFFF, c_red, c_lime, 0, true, true);
}