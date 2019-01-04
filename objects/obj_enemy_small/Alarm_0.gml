/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 117510F8
/// @DnDArgument : "steps" "rand_alarm"
/// @DnDArgument : "steps_relative" "1"
alarm_set(0, rand_alarm + alarm_get(0));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 69A70BCE
/// @DnDArgument : "direction" "90,180,0,270"
direction = choose(90,180,0,270);