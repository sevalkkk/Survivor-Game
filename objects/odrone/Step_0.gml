

if(whoFollow_id!= noone)
{
	x=lerp(x,whoFollow_id.x+distance_x,how_muchTo_stick );
	y=lerp(y,whoFollow_id.y+distance_y,how_muchTo_stick );
}

#region

	if(instance_exists(oEnemy) )
	{
		var nearestEnemy= instance_nearest(x,y,oEnemy);
		
		if(attackRange > point_distance(x,y,nearestEnemy.x,nearestEnemy.y))
		{
			attack_timer--;
			if(attack_timer<=0)
			{
				attack_timer=attack_time;
			    var bullet=	instance_create_layer(x,y,"Instances",oBulletDrone);
				bullet.direction=point_direction(x,y,nearestEnemy.x,nearestEnemy.y);
				bullet.speed=room_speed/2;
			}
		}
	}



#endregion

if(instance_exists(oPlayerDead))
{
	
	instance_destroy();
}