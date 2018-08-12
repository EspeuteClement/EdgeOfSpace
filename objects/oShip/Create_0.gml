/// @description

enum WeaponType
{
	SMALL,
	BIG,
	TRIPLE,
	
	COUNT
};

_current_weapon = WeaponType.SMALL;


_life_max = 10;
_life = _life_max;

_vx = 0;
_vy = 0;

_speed = 3;
_speed_fire = 2;


_fire_rate = 6;
_fire_timer = 0;

_iframes = 0;
_iframes_max = 10;

_turn_timer = 0;
_turn_timer_rate = 4;
_turn_facing = 1;

_boost_frame = 0;
_boost_speed = 3;
_boost_image = sBoost;

_k_left		= false;
_k_right	= false;
_k_up		= false;
_k_down		= false;
_k_fire		= false;
_k_action	= false;

image_speed = 0;