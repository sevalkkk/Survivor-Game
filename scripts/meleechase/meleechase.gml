
function MeleeChase()
{
	sprite_index=sprChase;
	if(instance_exists(oPlayer))
	{
		distanceofMelee=point_distance(x,y,oPlayer.x,oPlayer.y);
		directionofMelee=point_direction(x,y,oPlayer.x,oPlayer.y);
	}
	camera();
	if(distanceofMelee<cam_length)
	{
		x+= lengthdir_x(2,directionofMelee);
	}
	if(distanceofMelee<100)
	{
		state=ENEMYSTATE.ATTACK;
	}
    

}