
if(x>view_xBoss+300)
{
 if(distance_to_point(hiding_placeX1,hiding_placeY1)>=15&& distance_to_point(hiding_placeX2,hiding_placeY2)<=distance1) move_towards_point(hiding_placeX1,hiding_placeY1,hideSpeed);
 else speed=0;
		
}

else if(x<view_xBoss+300)
{
	
 if(distance_to_point(hiding_placeX2,hiding_placeY2)>=15 && distance_to_point(hiding_placeX2,hiding_placeY2)<=distance2) move_towards_point(hiding_placeX1,hiding_placeY1,hideSpeed);
 else speed=0;

}
else{}//stay
