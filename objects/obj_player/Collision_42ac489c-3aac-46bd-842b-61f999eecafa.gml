/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 5A0F66B6
/// @DnDArgument : "health" "-5"

__dnd_health = real(-5);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 721391C7
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0553FA0F
	/// @DnDParent : 721391C7
	/// @DnDArgument : "room" "death"
	/// @DnDSaveInfo : "room" "67015b80-e475-4e79-b875-eb49a4186754"
	room_goto(death);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 32812802
	/// @DnDParent : 721391C7
	show_debug_message(string("debug message"));
}