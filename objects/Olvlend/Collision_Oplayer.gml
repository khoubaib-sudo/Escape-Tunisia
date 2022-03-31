/// @description move to next room

with (Oplayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		slidTransition(TRANS_MODE.GOTO,other.target);
		
	}
}
	
