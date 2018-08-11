var fra = argument0 div argument1;
var md = argument0 mod argument1;

return lerp(noise(fra), noise(fra+1), md);