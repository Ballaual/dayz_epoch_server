class ExtraRc
{
	class ItemRadio
		{
			class switchOnOff
			{
				text = "Power ON/OFF";
				script = "execVM 'scripts\radio\switch_on_off.sqf'";
        	};
   	 };	
};


/* This is an example of how the entries should look.

	class Classname of Item/Weapon/Tool in inventory
	{
		class Name of the right click action (anything you want)
		{
			text = "Display name of action";
			script = "path to script to execute or code snippet to execute.";
        };
    };

*/
