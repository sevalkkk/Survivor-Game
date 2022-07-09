
function MeleeAttack()
{
	
	sprite_index=sprAttack;
	if(instance_exists(oPlayer))
	{
		directionofMelee=point_direction(x,y,oPlayer.x,oPlayer.y);
	}
	x+= lengthdir_x(2,directionofMelee);
		
	
}