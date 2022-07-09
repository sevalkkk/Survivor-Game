var enemy=instance_create_layer(x,y,"Enemy",oMelee);
enemy.direction=point_direction(x,y,oPlayer.x,oPlayer.y);
enemy.state=ENEMYSTATE.FREE;