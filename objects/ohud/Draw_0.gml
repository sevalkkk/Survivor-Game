	with(oPlayer)
	{
		if(haveshield)
			{
			draw_text(150,30,"SHIELD");
			draw_text(150,45, "life: " + string(oShield.life));
			draw_text(150,60, "size: " + string(oShield.size));
			draw_text(150,75, "active: " + string(oShield.active));
			draw_text(150,90, "regen: " + string(oShield.regen));
			}
		
	}