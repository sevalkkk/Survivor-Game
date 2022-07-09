///  @desc control menu

// item ease in

if(global.pause)
{
	//instance_activate_all();

	menu_x += (menu_x_target - menu_x) / menu_speed;

	//keyboard controls
	if(menu_control)
	{
		//alarm[0]=room_speed/4;
		if(keyboard_check_pressed(vk_up))
		{
			menu_cursor++;
			if(menu_cursor>=menu_items) menu_cursor=0;
		}
		if(keyboard_check_pressed(vk_down))
		{
			menu_cursor--;
			if(menu_cursor<0) menu_cursor=menu_items-1;
		}
		
		if(keyboard_check_pressed(vk_enter)) 
		{
			//alarm[0]=room_speed/2;
			alarm[0]=room_speed/3;
			instance_activate_object(oPlayer);
			menu_x_target = gui_width+200;  
			menu_committed=menu_cursor;
			ScreenShake(4,30);
			menu_control=false;
			selected=true;
			alarm[1]=room_speed/4;
			
		}
  
		var mouse_y_gui =device_mouse_y_to_gui(0);
		if(mouse_y_gui < menu_y) && (mouse_y_gui > menu_top)
		{
			menu_cursor = (menu_y -mouse_y_gui) div (menu_itemheight *1.5);
			if(mouse_check_button_pressed(mb_left))
			{
				
			//alarm[0]=room_speed/2;
				alarm[0]=room_speed/3;
				instance_activate_object(oPlayer);
				menu_x_target = gui_width+200;  
				menu_committed=menu_cursor;
				ScreenShake(4,30);
				menu_control=false;
				selected=true;
				alarm[1]=room_speed/4;
				
			}
			
		} 
		
		
	}
	//else
	//{
	//	alarm[0]=room_speed/2;
	//}

}









if(menu[0]==0) menu[0]="Fire Rate";
else if(menu[0]==1) menu[0]="Damage";
else if(menu[0]==2) menu[0]="Drone";
else if(menu[0]==3) menu[0]="Drone Damage";
else if(menu[0]==4) menu[0]="Drone Fire Rate";
else if(menu[0]==5) menu[0]="Hit Floor";
else if(menu[0]==6) menu[0]="Run Speed";
else if(menu[0]==7) menu[0]="Shield";


if(menu[1]==0) menu[1]="Fire Rate";
else if(menu[1]==1) menu[1]="Damage";
else if(menu[1]==2) menu[1]="Drone";
else if(menu[1]==3) menu[1]="Drone Damage";
else if(menu[1]==4) menu[1]="Drone Fire Rate";
else if(menu[1]==5) menu[1]="Hit Floor";
else if(menu[1]==6) menu[1]="Run Speed";
else if(menu[1]==7) menu[1]="Shield";


if(menu[2]==0) menu[2]="Fire Rate";
else if(menu[2]==1) menu[2]="Damage";
else if(menu[2]==2) menu[2]="Drone";
else if(menu[2]==3) menu[2]="Drone Damage";
else if(menu[2]==4) menu[2]="Drone Fire Rate";
else if(menu[2]==5) menu[2]="Hit Floor";
else if(menu[2]==6) menu[2]="Run Speed";
else if(menu[2]==7) menu[2]="Shield";




	if(menu_committed==0)
	{
		menu_committed=-1;
		if(menu[0]=="Fire Rate") FireRate();
		else if(menu[0]=="Damage") Damage();
		else if(menu[0]=="Drone") Drone();
		else if(menu[0]=="Drone Damage") DroneDamage();
		else if(menu[0]=="Drone Fire Rate") DroneFireRate();
		else if(menu[0]=="Hit Floor") HitFloor();
		else if(menu[0]=="Run Speed") RunSpeed();
		else if(menu[0]=="Shield") Shield();
	}


	if(menu_committed==1)
	{
		menu_committed=-1;
		if(menu[1]=="Fire Rate") FireRate();
		else if(menu[1]=="Damage") Damage();
		else if(menu[1]=="Drone") Drone();
		else if(menu[1]=="Drone Damage") DroneDamage();
		else if(menu[1]=="Drone Fire Rate") DroneFireRate();
		else if(menu[1]=="Hit Floor") HitFloor();
		else if(menu[1]=="Run Speed") RunSpeed();
		else if(menu[1]=="Shield") Shield();
		
	}


	if(menu_committed==2)
	{
		menu_committed=-1;
		if(menu[2]=="Fire Rate") FireRate();
		else if(menu[2]=="Damage") Damage();
		else if(menu[2]=="Drone") Drone();
		else if(menu[2]=="Drone Damage") DroneDamage();
		else if(menu[2]=="Drone Fire Rate") DroneFireRate();
		else if(menu[2]=="Hit Floor") HitFloor();
		else if(menu[2]=="Run Speed") RunSpeed();
		else if(menu[2]=="Shield") Shield();
	}















