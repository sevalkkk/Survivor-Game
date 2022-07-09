
	with (other)
	{
		directionofBullet=point_direction(x,y,other.x,other.y);
		
		if(global.damage)
		{
			global.damage=false;
			hp=hp-hp*0.4;
		}
		else 
		{
			hp--;
			state=ENEMYSTATE.HURT;
			alarm[1]=room_speed/2;
		}
		flash = 3;
		hitfrom=other.direction;
		
		
		
	}
    instance_destroy();
	



