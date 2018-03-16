/// @description Insert description here
// You can write your code in this editor
hurt_orientation=objHUD.player_oreientation;

switch (hurt_orientation)

{
	case sprPlayerDown:
	{
		sprite_index=sprPlayerHurtDown;
		image_index=0;
		break;
	}
	case sprPlayerUp:
	{
		sprite_index=sprPlayerHurtUP;
		image_index=0;
		break;
	}
	
	case sprPlayerRight:
	{
		sprite_index=sprPlayerHurtRight;
		image_index=0;
		break;
	}
	
	case sprPlayerLeft:
	{
		sprite_index=sprPlayerHurtLeft;
		image_index=0;
		break;
	}
	
	case sprPlayerSuitDown:
	{
		sprite_index=sprSUITDOWNHURT;
		image_index=0;
		break;
	}
	
	case sprPlaySuitUp:
	{
		sprite_index=sprSuitUPHURT;
		image_index=0;
		break;
	}
	
	case sprPlayerSuitRight:
	{
		sprite_index=sprSUITRIGHTHURT;
		image_index=0;
		break;
	}
	
	case sprPlayerSuitLeft:
	{
		sprite_index=sprSUITLEFTHURT;
		image_index=0;
		break;
	}
	
	
}

hurt_count=0;

