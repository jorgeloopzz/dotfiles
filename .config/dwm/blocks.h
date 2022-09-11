//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/				/*Command*/				/*Update Interval*/	/*Update Signal*/
	{"  ",				"~/.config/dwm/bar_scripts/updates.sh",			0,			0},

	{" ",				"~/.config/dwm/bar_scripts/kernel.sh",			0,			0},

	{" ",				"~/.config/dwm/bar_scripts/ram.sh",			1,			0},

	{" ", 				"~/.config/dwm/bar_scripts/date.sh",			60,			0},

	{"", 				"~/.config/dwm/bar_scripts/battery.sh",			60,			0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
