
function FireRate() 
{
	show_debug_message("firerate");
	with(oBullet)
	{
		firingDelay++;
	}
}

function Damage() 
{
	show_debug_message("damage");
	global.damage=true;
	
}

function Drone() 
{
	show_debug_message("drone");
	//in object drone...
	oPlayer.havedrone=true;
}

function DroneDamage() 
{
	show_debug_message("dronedamage");
	global.droneDamage=true;
}

function DroneFireRate() 
{
	show_debug_message("dronefire");
	with(oBulletDrone)
	{
		bulletSpeed*=0.4;
	}
}

function HitFloor() 
{
	show_debug_message("hitfloor");
}

function RunSpeed() 
{
	show_debug_message("runspeed");
	with(oPlayer)
	{
		walkspeed+=0.4;
	}
	
	
	
}

function Shield() 
{
	show_debug_message("shield");
	oPlayer.haveshield=true;
}

