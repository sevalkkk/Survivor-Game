if(hasgun)
{
	mygun = instance_create_layer(x,y,"Gun",oGunEnemy);
	with(mygun)
	{
		owner = other.id;
	}
}
else mygun=noone;


enemyGrav=global.enemyGrav;
enemySize= global.enemySize;
countdown = countdownrate;
sawtheplayer=false;
enemyXP=30;