

// Inherit the parent event
event_inherited();

if(selected)
{
	switch(image_index)
	{
		case 0:
			FireRate();	
		break;
	
		case 1:
			Damage();	
		break;
	
		case 2:
			Drone();	
		break;
	
		case 3:
			DroneDamage();	
		break;
	
		case 4:
			DroneFireRate();	
		break;
	
		case 5:
			HitFloor();	
		break;
	
		case 6:
			RunSpeed();	
		break;
	
		case 7:
			Shield();	
		break;
	}
}