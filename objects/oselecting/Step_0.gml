if(keyboard_check_pressed(vk_left))
{
	if(oSelectSkill1.selected)
	{
		oSelectSkill1.selected=false;
		oSelectSkill3.selected=true;
	}
	
	else if(oSelectSkill2.selected)
	{
		oSelectSkill2.selected=false;
		oSelectSkill1.selected=true;
	}
	
	else if(oSelectSkill3.selected)
	{
		oSelectSkill3.selected=false;
		oSelectSkill2.selected=true;
	}

}

else if(keyboard_check_pressed(vk_right))
{
	if(oSelectSkill1.selected)
	{
		oSelectSkill1.selected=false;
		oSelectSkill2.selected=true;
	}
	
	else if(oSelectSkill2.selected)
	{
		oSelectSkill2.selected=false;
		oSelectSkill3.selected=true;
	}
	
	else if(oSelectSkill3.selected)
	{
		oSelectSkill3.selected=false;
		oSelectSkill1.selected=true;
	}
}

