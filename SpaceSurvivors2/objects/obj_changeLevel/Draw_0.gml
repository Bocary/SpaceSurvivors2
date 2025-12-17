/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(alpha)

var rect_w = 800;
var rect_h = 250;

// Center position
var cx = room_width * 0.5;
var cy = room_height * 0.5;

// Draw rectangle centered
draw_set_colour(c_black);
draw_roundrect(
    cx - rect_w * 0.5,
    cy - rect_h * 0.5,
    cx + rect_w * 0.5,
    cy + rect_h * 0.5,
    false
);

// Draw text centered
draw_set_colour(c_white);
draw_set_font(font_70)
draw_set_halign(fa_center)
draw_text(cx,cy-60,text_);
draw_set_halign(fa_left)

draw_set_alpha(1)