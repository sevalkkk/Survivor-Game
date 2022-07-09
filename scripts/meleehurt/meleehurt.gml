
function MeleeHurt()
{
	sprite_index=sprHurt;
	if(place_meeting(x+hsp,y,oWall))
	{
		while(!place_meeting(x+sign(hsp),y,oWall))
		{
			x+=sign(hsp);
		}
		if(place_meeting(x+sign(hsp),y,oWall))
		{
			hsp=-hsp;
		}
	}
	x+=hsp;
	

	

	if(hp<=0)
	{
		state=ENEMYSTATE.DIE;
	}

	
	
}