draw_rectangle_color(x,y+50,x+305,y+60,c_red,c_red,c_red,c_red,false);
draw_rectangle_color(x,y+50,x+(xp/maxXP*300),y+60,c_white,c_white,c_white,c_white,false);
draw_text(70, 25, "LEVEL: " + string(global.level));
draw_text(70, 40, "XP: " + string(xp));