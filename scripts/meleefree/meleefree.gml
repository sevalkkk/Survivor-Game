function MeleeFree()
{
	
	sprite_index=sMelee;
	vsp= vsp+enemyGrav;

	if((grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall)))
	{
	
		hsp= -hsp;
	
	}

	if(place_meeting(x+hsp,y,oWall)) 
	{
		while(!place_meeting(x+sign(hsp),y,oWall)) 
		{
			x = x+ sign(hsp);
		}
		if(afraidofheights) 
		{
			hsp=-hsp;
		}
	
	}
	x= x + hsp;
	
	
	if(place_meeting(x,y+vsp,oWall))
	{
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y+ sign(vsp);
		}
	
		vsp=0;
	
	}



	if(!place_meeting(x,y+1,oWall))
	{
		grounded= false;
	}

	else
	{
		grounded =true;
		if (!afraidofheights) && (place_meeting(x+hsp,y,oWall)) 
		{
				vsp = -7;
		 }
	
	}
	y= y + vsp;
	if(hsp!=0) image_xscale = sign(hsp)* enemySize;
	image_yscale = enemySize;


	if (instance_exists(oPlayer))
	{
		if ((sign(hsp)) <0) && (x>oPlayer.x)
		{
			sawtheplayer=true;
			alarm[0]=room_speed/2;
		
		}
	

		if ((sign(hsp))>= 0) && (x<oPlayer.x)
		{
			sawtheplayer=true;
			alarm[0]=room_speed/2;
		
		}
	
	}
	if(sawtheplayer)
	{
		state=ENEMYSTATE.CHASE;
	
	}


} 