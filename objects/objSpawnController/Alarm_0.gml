/// @description Insert description here
// You can write your code in this editor
if(enoughBase>0)
{
	for (i=irandom(1);i<spanwnumber;i++)
	{
enoughBase=enoughBase-1;
instance_create_layer(random_range(74,room_width-74),random_range(74,room_height-74),"Instances",objBaseSpawner);
	}
alarm[0]=baseTime;
}

else
{
	


if(suitchance>=99)
{
 suitchance=1;	
}

if(healthschance>=99)
{
 healthschance=1;	
}

suitspawn= irandom(suitchance*2);
healthspawn= irandom(healthschance*2);

if(suitspawn==1) instance_create_layer(128,128,"Instances",objSuitUp)
if(healthspawn==1) instance_create_layer(256,256,"Instances",objhealthup)

if(enoughBase>=150)
{
 enoughBase=50;	
}
else
{
		enoughBase=enoughBase+15;	
}

if(baseEnmhealth>=99)baseEnmhealth=baseEnmhealth+30;
 if(spanwnumber<3) spanwnumber=spanwnumber+1;
alarm[0]=baseTime;

}