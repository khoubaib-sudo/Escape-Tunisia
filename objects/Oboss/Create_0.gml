if (haswapon)
{
	mygun = instance_create_layer(x,y,"gun",Ogunboss);
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;