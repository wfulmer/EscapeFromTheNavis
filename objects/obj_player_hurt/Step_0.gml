/// @description Insert description here
// You can write your code in this editor

if(!keyboard_check(ord("A")) && gamepad_button_check(0,gp_padl))
 {
	 moveplayerlefthurt();
 }
 else if(!keyboard_check(ord("A")) && gamepad_axis_value(0,gp_axislh)<=-.25)
 {
	moveplayerlefthurt()
 }
 
 //code for game pad right

 
 if(!keyboard_check(ord("D")) && gamepad_button_check(0,gp_padr))
 {
	moveplayerrighthurt()
 }
 else if(!keyboard_check(ord("D")) && gamepad_axis_value(0,gp_axislh)>=.25)
 {
	moveplayerrighthurt()
 }
 
 //code for up
 if(!keyboard_check(ord("W")) && gamepad_button_check(0,gp_padu))
 {
	movingplayeruphurt()
 }
 else if(!keyboard_check(ord("W")) && gamepad_axis_value(0,gp_axislv)<=-.25)
 {
	movingplayeruphurt()
 }
 // code for S movemment down
 
 if(!keyboard_check(ord("S")) && gamepad_button_check(0,gp_padd))
 {
	 moveplayerdownhurt()
 }
 else if(!keyboard_check(ord("S")) && gamepad_axis_value(0,gp_axislv)>=.25)
 {
	moveplayerdownhurt()
 }
