if(xp>=maxXP)
{
	global.levelup=true;
	xp=0;
	global.level+=1;
	maxXP= (30+(global.level*100)-20);
}






