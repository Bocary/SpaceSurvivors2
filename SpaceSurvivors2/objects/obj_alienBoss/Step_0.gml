/// @description Insert description here
// You can write your code in this editor

if(x>1704)
{
x-=2	
}
else
{
start_spawn=true	
}

wave_time += 0.03; // controls speed of the wave
y = base_y + sin(wave_time) * 10; // 20 = amplitude (height)

