/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 3D5BB36F
/// @DnDArgument : "health" "__dnd_health - 2"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(__dnd_health - 2);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 5F524443
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 372DA29C
	/// @DnDParent : 5F524443
	/// @DnDArgument : "room" "death"
	/// @DnDSaveInfo : "room" "67015b80-e475-4e79-b875-eb49a4186754"
	room_goto(death);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0E6E7010
	/// @DnDParent : 5F524443
	show_debug_message(string("debug message"));
}