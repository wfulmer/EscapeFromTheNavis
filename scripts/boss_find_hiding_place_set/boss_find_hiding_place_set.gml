view_xBoss=camera_get_view_x(view_camera[0]);
view_yBoss=camera_get_view_y(view_camera[0]);

hiding_placeX1= view_xBoss +832/2;
hiding_placeY1 = view_yBoss+576/2;

hiding_placeX2 = hiding_placeX1;
hiding_placeY2 = hiding_placeY1;

hideSpeed=10;

distance1= sqrt(power(hiding_placeX1-view_xBoss,2)+power(hiding_placeY1-view_yBoss,2));
distance2= sqrt(power(hiding_placeX2-view_xBoss,2)+power(hiding_placeY2-view_yBoss,2));

if(x>view_xBoss+300)
{
 if(distance_to_point(hiding_placeX1,hiding_placeY1)>=15 && distance_to_point(hiding_placeX2,hiding_placeY2)<=distance1 ) move_towards_point(hiding_placeX1,hiding_placeY1,hideSpeed);
 else speed=0;
		
}

else if(x<view_xBoss+300)
{
	
 if(distance_to_point(hiding_placeX2,hiding_placeY2)>=15 && distance_to_point(hiding_placeX2,hiding_placeY2)<=distance2 ) move_towards_point(hiding_placeX1,hiding_placeY1,hideSpeed);
 else speed=0;

}
else{}//stay
