gui_width =display_get_gui_width();
gui_height =display_get_gui_height();
gui_margin =32;

menu_x= gui_width+200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width -  gui_margin ;
menu_speed = 25; // lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(menu_font);
menu_committed= -1;
menu_control = true;


a=floor(random(sprite_get_number(sprite_index)));
b=floor(random(sprite_get_number(sprite_index)));
c=floor(random(sprite_get_number(sprite_index)));

menu[2] = a ;
menu[1] = b ;
menu[0] = c  ;

menu_items = array_length(menu);

menu_top=menu_y-((menu_itemheight*1.5)*menu_items);


menu_cursor = 2;


