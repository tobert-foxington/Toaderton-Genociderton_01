if place_meeting(x,y,obj_player){
if file_exists("Save.sav")	{
	file_delete("Save.sav");
	}
	ini_open("Save.sav");
	var savedRoom = room;
	ini_write_real("Save1", "room",real(savedRoom));
	ini_write_real("Save1", "x",obj_player.x);
	ini_write_real("Save1", "y",obj_player.y);
}