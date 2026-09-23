_alph-=0.015;
if (_direct==0) _direct = round(random_range(-12,12));
x+=_direct/10;
_speed = clamp(sqr(x-__x)/1500,0,12)
y=clamp(y+_speed,0,__y+150);
if (_alph<=0) instance_destroy();
depth=-100