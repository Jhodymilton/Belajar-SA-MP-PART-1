#include <a_samp>
#include <sscanf2>
#include <dini>
#include <zcmd>

main()
{
	print("\n----------------------------------");
	print("         Belajar Roleplay            ");
	print("----------------------------------\n");
}

public OnGameModeInit()
{
	SetGameModeText("Belajar V1.0");
	// Menentukan titik spawn awal (AddPlayerClass)
	AddPlayerClass(0,1685.7371, -2332.9907, 13.5468, 3.9, 0, 0, 0, 0, 0, 0);
	return 1;
}
