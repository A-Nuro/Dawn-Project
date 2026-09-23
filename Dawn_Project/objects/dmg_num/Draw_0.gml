if is_hp==true
{
if num_dmg>=0 
{
	
	scribble(string(num_dmg)).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x-1,y-1);
	scribble(string(num_dmg)).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x-1,y+1);
	scribble(string(num_dmg)).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x+1,y-1);
	scribble(string(num_dmg)).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x+1,y+1);
	scribble(string(num_dmg)).starting_format("Font_main",c_white).blend(c_white,_alph).scale(0.3).draw(x,y);
}
if num_dmg<0 
{
	scribble(string("+")+string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x-1,y-1);
	scribble(string("+")+string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x-1,y+1);
	scribble(string("+")+string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x+1,y-1);
	scribble(string("+")+string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x+1,y+1);
	scribble(string("+")+string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_lime).blend(c_white,_alph).scale(0.3).draw(x,y);
}
}
else
{
	if num_dmg<0 
{
	scribble(string("+")+string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x-1,y-1);
	scribble(string("+")+string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x-1,y+1);
	scribble(string("+")+string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x+1,y-1);
	scribble(string("+")+string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_black).blend(c_white,_alph).scale(0.3).draw(x+1,y+1);
	scribble(string("+")+string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_aqua).blend(c_white,_alph).scale(0.3).draw(x,y);
}
else
{
	scribble(string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_blue).blend(c_white,_alph).scale(0.3).draw(x-1,y-1);
	scribble(string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_blue).blend(c_white,_alph).scale(0.3).draw(x-1,y+1);
	scribble(string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_blue).blend(c_white,_alph).scale(0.3).draw(x+1,y-1);
	scribble(string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_blue).blend(c_white,_alph).scale(0.3).draw(x+1,y+1);
	scribble(string(sqrt(sqr(num_dmg)))).starting_format("Font_main",c_aqua).blend(c_white,_alph).scale(0.3).draw(x,y);
}
}
