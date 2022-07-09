if(instance_exists(oPlayer))
{
	x=oPlayer.x-15;
	y=oPlayer.y-30;
	depth= oPlayer.depth-5;
}
if(regen)
{
	if(life<1)
	{
		life+=0.005;
	}
}

if(active)
{
	if(size<1)
	{	
		size+=0.01;
	}
}

image_alpha=life;
image_xscale=size;
image_yscale=size;

if(instance_exists(oPlayerDead))
{
	instance_destroy();
}