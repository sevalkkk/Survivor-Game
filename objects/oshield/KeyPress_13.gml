life-= 0.1;

if(life<=0)
{
	size=0;
	regen=false;
	active=false;
	alarm[0]= room_speed*4;
}

regen=false;
alarm[1]= room_speed*2;