/// @description Insert description here
// You can write your code in this editor
// --- SOLID COLLISION MOVEMENT (pixel stepping, supports subpixels) ---

// Accumulate subpixel movement
x_rem += hspeed;
y_rem += vspeed;

// Convert to whole-pixel steps this frame
var mx = floor(abs(x_rem)) * sign(x_rem);
var my = floor(abs(y_rem)) * sign(y_rem);

// Remove the whole-pixel part from the remainder
x_rem -= mx;
y_rem -= my;

// --- Move X with collisions ---
while (mx != 0)
{
    if (!place_meeting(x + sign(mx), y, obj_wall))
    {
        x += sign(mx);
        mx -= sign(mx);
    }
    else
    {
        hspeed = 0;
        x_rem = 0;
        break;
    }
}

// --- Move Y with collisions ---
while (my != 0)
{
    if (!place_meeting(x, y + sign(my), obj_wall))
    {
        y += sign(my);
        my -= sign(my);
    }
    else
    {
        vspeed = 0;
        y_rem = 0;
        break;
    }
}
