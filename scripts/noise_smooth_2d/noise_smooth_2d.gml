var fra_x = argument0 div argument2;
var md_x = frac(argument0/argument2);

var fra_y = argument1 div argument2;
var md_y = frac(argument1/argument2);



var v1 = lerp(noise_2d(fra_x, fra_y), noise_2d(fra_x+1, fra_y), md_x);
var v2 = lerp(noise_2d(fra_x, fra_y+1), noise_2d(fra_x+1, fra_y+1), md_x);


return lerp(v1, v2, md_y);