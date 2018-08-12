/// @description

enum WeaponType
{
	SMALL,
	BIG,
	TRIPLE,
	MINIGUN,
	LASER,
	
	COUNT
};

enum WDB
{
	TEXT,
	SPEED_FIRE
};

global.weapon_db = 
[
	["SMALL", 2],
	["HEAVY GUN", 1.5],
	["TRIPLE SHOT", 2],
	["MINIGUN", 1.0],
	["LASER", 0.75]
]

_current_weapon = WeaponType.SMALL;

_score = 0;

_snd_lazer = 0;

_life_max = 10;
_life = _life_max;

_vx = 0;
_vy = 0;

_speed = 3;
_speed_fire = 2;


_fire_rate = 6;
_fire_timer = 0;

_iframes = 0;
_iframes_max = 30;

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