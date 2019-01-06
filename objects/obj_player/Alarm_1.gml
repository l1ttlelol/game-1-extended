/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 404E07C1
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0A2C0970
	/// @DnDParent : 404E07C1
	/// @DnDArgument : "room" "death"
	/// @DnDSaveInfo : "room" "67015b80-e475-4e79-b875-eb49a4186754"
	room_goto(death);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7574E634
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
	/// @DnDVersion : 1
	/// @DnDHash : 65A8344D
	/// @DnDParent : 7574E634
	/// @DnDArgument : "x1" "10"
	/// @DnDArgument : "y1" "10"
	/// @DnDArgument : "x2" "1000"
	/// @DnDArgument : "y2" "110"
	/// @DnDArgument : "direction" "2"
	/// @DnDArgument : "backcol" "$FF1A1A1A"
	/// @DnDArgument : "mincol" "$FF0000FF"
	/// @DnDArgument : "maxcol" "$FF00FF00"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	draw_healthbar(10, 10, 1000, 110, __dnd_health, $FF1A1A1A, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 2, (($FF1A1A1A>>24) != 0), (($FFFFFFFF>>24) != 0));
}