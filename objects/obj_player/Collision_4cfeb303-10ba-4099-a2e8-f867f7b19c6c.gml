/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 1217B615
/// @DnDArgument : "health" "__dnd_health - 5"

__dnd_health = real(__dnd_health - 5);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 2D6D988B
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5266B94A
	/// @DnDParent : 2D6D988B
	/// @DnDArgument : "room" "death"
	/// @DnDSaveInfo : "room" "67015b80-e475-4e79-b875-eb49a4186754"
	room_goto(death);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 57B11A15
	/// @DnDParent : 2D6D988B
	show_debug_message(string("debug message"));
}