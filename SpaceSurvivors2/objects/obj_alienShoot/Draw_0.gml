/// @description Insert description here
// You can write your code in this editor

draw_self()

// HP bar settings
var bar_w = 64;
var bar_h = 10;
var bar_y_offset = 80; // distance under the enemy

// HP percentage
var hp_frac = hitpoints / maxhp;

// Background (empty bar)
draw_set_colour(c_black);
draw_rectangle(
    x - bar_w * 0.5,
    y + bar_y_offset,
    x + bar_w * 0.5,
    y + bar_y_offset + bar_h,
    false
);

// Filled HP
draw_set_colour(c_red);
draw_rectangle(
    x - bar_w * 0.5,
    y + bar_y_offset,
    x - bar_w * 0.5 + (bar_w * hp_frac),
    y + bar_y_offset + bar_h,
    false
);

// Reset color
draw_set_colour(c_white);
