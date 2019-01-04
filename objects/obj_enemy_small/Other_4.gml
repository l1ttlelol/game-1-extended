/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 7DE63FB2
/// @DnDArgument : "direction" "90,180,0,270"
direction = choose(90,180,0,270);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6B1635C6
/// @DnDArgument : "speed" "10"
speed = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40AF8BB0
/// @DnDArgument : "expr" "irandom_range(7,20)"
/// @DnDArgument : "var" "rand_alarm"
rand_alarm = irandom_range(7,20);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 67BC9D61
/// @DnDArgument : "steps" "rand_alarm"
/// @DnDArgument : "steps_relative" "1"
alarm_set(0, rand_alarm + alarm_get(0));