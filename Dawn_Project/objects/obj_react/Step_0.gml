alpha=clamp(alpha,0,1);
if (state<45)
{
alpha+=0.1	
}
if (state<45) state ++;

if (state>=45)
{
alpha-=alpha_down;
}
if (alpha==0) instance_destroy(id);