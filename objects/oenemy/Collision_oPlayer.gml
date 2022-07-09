
if(!place_meeting(other.x,other.y,oWall))
{
	if(sign(hsp)>0)
	{
		other.x+=30;
		other.y-=10;
	
	}
	if(sign(hsp)<0) 
	{
		other.x-=30;
		other.y-=10;
	}

}


	