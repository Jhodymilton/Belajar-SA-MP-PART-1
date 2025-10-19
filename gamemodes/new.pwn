#include <a_samp>
#include <sscanf2>
#include <dini>
#include <zcmd>

#define DIALOG_REGISTER 1
#define DIALOG_LOGIN    2

new bool:PlayerLogged[MAX_PLAYERS];
new bool:IsNewPlayer[MAX_PLAYERS];
new bool:IsReturningPlayer[MAX_PLAYERS];

new Text:BrandingTD[MAX_PLAYERS];

// --- Stock Fungsi Akun Dasar ---
stock GetPName(playerid, const dest[], size = MAX_PLAYER_NAME)
{
    GetPlayerName(playerid, dest, size);
    return 1;
}

stock AccountPath(playerid, dest[], size = 64)
{
    new name[MAX_PLAYER_NAME];
    GetPName(playerid, name, sizeof(name));
    format(dest, size, "Accounts/%s.ini", name);
    return 1;
}

main()
{
	print("\n----------------------------------");
	print("         Belajar Roleplay            ");
	print("----------------------------------\n");
}

public OnGameModeInit()
{
	SetGameModeText("Belajar V1.0");
	AddPlayerClass(0,1685.7371, -2332.9907, 13.5468, 3.9, 0, 0, 0, 0, 0, 0);
	return 1;
}
