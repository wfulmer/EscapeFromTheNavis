/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer))
{
draw_set_color(c_white)
draw_set_font(fontHud)
draw_text(74,84,"Health: "+string(objPlayer.hp))
draw_text(74,94,"Lives: "+string(life))
draw_text(74,110,"Suit Energy: "+string(objPlayer.suitHealth))
draw_text(74,125,"Healthup: "+string((objPlayer.inventory[?"healthup"])))
draw_text(74,140,"Suitup: "+string((objPlayer.inventory[?"suitup"])))
draw_text(74,160,"Score: "+string(scoresofarfar))
}