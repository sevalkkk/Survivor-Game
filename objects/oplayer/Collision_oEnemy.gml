if(!invis) && (!dead)
{
    invis=true;
	alarm[0]=room_speed/2;
	
	if(global.protect) 
	{
		global.protect=false;
		hp-=0.4;
	}
	
	else hp--;
	if(hp<=0)
	{
	   KillPlayer();
	   dead=true;
	}
	

}