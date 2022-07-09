/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(hp <=0)
{
	with(oBar)
	{
		xp+=other.enemyXP;
	}
	with(instance_create_layer(x,y,layer,oDeadEnemy))
	{
		
		direction= other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if(sign(hsp) !=0)
		{
			image_xscale = sign(hsp)*other.enemySize;
			image_yscale =  other.enemySize;
			
		}
	
	}
	with(mygun) instance_destroy();
	
}
if(instance_exists(oPlayer))
{
	if((point_direction(x,y,oPlayer.x,oPlayer.y)>0))
	{
		sawtheplayer=true;
	}
}


