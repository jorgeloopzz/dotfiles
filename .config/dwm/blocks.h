//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/				/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"  ",					"uname -r",						0,		0},

	{" ",				"free -h | awk '/^Mem:/ {print $3}'",				1,		0},

	{" ", 				"date '+%d/%m/%Y - %R'",					60,		0},

	{" ", "amixer get Master | tail -n1 | awk '{print $5}' | cut -c 2- | cut -c -3",		1,		0},

	{" ", 				"acpi | awk '{print $4}' | sed 's/,//'",			60,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
