/// @description Insert description here
// You can write your code in this editor
if(alpha<.9 && go==0){
alpha+=0.05	
}
else if (go==1)
{
	if(alpha>0){
	alpha-=0.05	
	}	
	
	if(alpha<=0)
	{
	instance_destroy()	
	}
}