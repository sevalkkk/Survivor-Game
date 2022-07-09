
	if (hsp != 0) 
	{
	    image_xscale = sign(hsp);
		
	}



if(hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	key_hitfloor= keyboard_check_pressed(ord("X"));
	
}
else 
{
	key_right = 0;
	key_left= 0;
	key_jump = 0;
	key_hitfloor=0;
	
}


	if(havedrone)
	{
		havedrone=false;
		var drone= instance_create_layer(x,y,"Instances",oDrone);
		drone.whoFollow_id= id;

		drone.distance_x=0;
		drone.distance_y=-70;

		drone.how_muchTo_stick=0.05;
	}
	else show_debug_message("no drone");
	
	

	if(haveshield)
	{
		haveshield=false;
		instance_create_layer(x,y,"Instances",oShield);
	}
	else show_debug_message("no shield");


//if(global.levelup)
//{
//	global.levelup=false;
//	var star= instance_create_layer(x,y,"Instances",oStar);
//}
var move= key_right - key_left;

	hsp = (move * walkspeed)+gunkickx;
	vsp=(vsp+grav)+gunkickx ;
	gunkicky=0;
	


//jumping
canjump -=1;
if(canjump >0)  
{
	
	if(key_jump)
	{
		vsp = -7;	
		canjump=0;
		
	}
}

if(place_meeting(x+hsp,y,oWall))
	{
		while(!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x+ sign(hsp);
		}
		hsp=0;
	
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
	y= y + vsp;
	if(place_meeting(x,y+1,oWall))
	{
		canjump=10;
	}
	else
	{
		if(key_hitfloor)
		{
			show_debug_message("x basıldı");
			vsp+=10;	
			with(oEnemy)
			{
				if(point_distance(other.x,other.y,x,y)<300)
				{
				
						hp--;
						state=ENEMYSTATE.HURT;
						alarm[1]=room_speed/2;
				}
			}
		}
	}