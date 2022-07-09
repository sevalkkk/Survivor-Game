
// Inherit the parent event
event_inherited();
xTo= global.xTo;
yTo= global.yTo;
hp=4;
state=ENEMYSTATE.FREE;
hurt=false;
enum ENEMYSTATE
{
	FREE,
	CHASE,
	ATTACK,
	HURT,
	DIE

};

enemyScript[ENEMYSTATE.FREE] = MeleeFree;
enemyScript[ENEMYSTATE.CHASE] = MeleeChase;
enemyScript[ENEMYSTATE.ATTACK] = MeleeAttack;
enemyScript[ENEMYSTATE.HURT] = MeleeHurt;
enemyScript[ENEMYSTATE.DIE] = MeleeDie;

sprFree=sMelee;
sprChase=sMeleeChase;
sprAttack=sMeleeAttack;
sprHurt= sMeleeHurt;
sprDie=sMeleeDie;


