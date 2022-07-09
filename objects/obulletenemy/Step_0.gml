x += lengthdir_x(bulletSpeed,direction);
y += lengthdir_y(bulletSpeed,direction);



if(place_meeting(x,y,oWall)) && (image_index !=0) 
{
   while(place_meeting(x,y,oWall))
   {
     x -= lengthdir_x(1,direction);
     y -= lengthdir_y(1,direction);
   }
   bulletSpeed = 10;
 
}

