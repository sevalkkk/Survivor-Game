

x= owner.x+7;
y= owner.y-12;
depth= owner.depth-5;


image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(oPlayer))  && (oEnemy.sawtheplayer)
{
   if(oPlayer.x <x) image_yscale = -image_yscale ;
   if(point_distance(oPlayer.x,oPlayer.y,x,y) <600) 
   {
     image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
	 countdown --;
	 if(!collision_line(x,y,oPlayer.x,oPlayer.y-2,oWall,false,true))
	 {
		
	    if(countdown == 0) 
		{
			    with (instance_create_layer(x,y-20,"Bullet",oBulletEnemy))
				{
					bulletSpeed = 10;
					direction = other.image_angle + random_range(-3,3);
					image_angle = direction;
					other.countdown = other.countdownrate;
			    }

			
		}
	 	 
	 }
   
   
   
   }



}
