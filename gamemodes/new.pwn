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

public OnPlayerConnect(playerid)
{
    PlayerLogged[playerid] = false;
    IsNewPlayer[playerid] = false;
    IsReturningPlayer[playerid] = false;
    BrandingTD[playerid] = Text:0;
    
    // Paksa pemain masuk mode spectate segera saat terhubung
    TogglePlayerSpectating(playerid, 1);
    
    new accpath[64];
    AccountPath(playerid, accpath, sizeof(accpath));
    
    // Buat Dialog Register & Login
    new title[24], body[96], b1[16], b2[16];
    if(!dini_Exists(accpath))
    {
        format(title, sizeof(title), "Registrasi Akun");
        format(body, sizeof(body), "Selamat datang player, masukkan password untuk mendaftar:");
        format(b1, sizeof(b1), "Register");
        format(b2, sizeof(b2), "Batal");
        ShowPlayerDialog(playerid, DIALOG_REGISTER, DIALOG_STYLE_INPUT, title, body, b1, b2);
    }
    else
    {
        format(title, sizeof(title), "Login Akun");
        format(body, sizeof(body), "Masukkan password untuk login");
        format(b1, sizeof(b1), "Login");
        format(b2, sizeof(b2), "Batal");
        ShowPlayerDialog(playerid, DIALOG_LOGIN, DIALOG_STYLE_INPUT, title, body, b1, b2);
    }
    return 1;
}
