package characters.data;

class PicoPlayer extends CharacterInfoBase
{

    override public function new(){

        super();

        info.name = "pico";
        info.spritePath = "week3/Pico_Everything";
        info.frameLoadType = sparrow;
        
        info.iconName = "pico";
        info.facesLeft = true;
        info.deathCharacter = "PicoDead";
        info.resultsCharacter = "Pico";
        info.focusOffset.set(100, -100);

        addByPrefix("idle", offset(0, 0), "Idle", 24, loop(false, 0), false, false);

        addByPrefix("singUP", offset(20, 29), "Sing Up", 24, loop(false, 0), false, false);
        addByPrefix("singDOWN", offset(92, -77), "Sing Down", 24, loop(false, 0), false, false);
        addByPrefix("singLEFT", offset(86, -11), "Sing Left", 24, loop(false, 0), false, false);
        addByPrefix("singRIGHT", offset(-46, 1), "Sing Right", 24, loop(false, 0), false, false);

        addByPrefix("singRIGHTmiss", offset(-40, 49), "Miss Right", 24, loop(true, -4), false, false);
        addByPrefix("singLEFTmiss", offset(82, 27), "Miss Left", 24, loop(true, -4), false, false);
        addByPrefix("singUPmiss", offset(26, 67), "Miss Up", 24, loop(true, -4), false, false);
        addByPrefix("singDOWNmiss", offset(86, -37), "Miss Down", 24, loop(true, -4), false, false);

        addByPrefix("singUP-censor", offset(20, 29), "Censor Up", 24, loop(true, -4), false, false);
        addByPrefix("singDOWN-censor", offset(92, -77), "Censor Down", 24, loop(true, -4), false, false);
        addByPrefix("singLEFT-censor", offset(86, -11), "Censor Left", 24, loop(true, -4), false, false);
        addByPrefix("singRIGHT-censor", offset(-46, 1), "Censor Right", 24, loop(true, -4), false, false);

        addByPrefix("burp", offset(38, -1), "Burp", 24, loop(false, 0), false, false);
        addByPrefix("burpBig", offset(37, -1), "Big Burp", 24, loop(false, 0), false, false);
        addByPrefix("shit", offset(), "Shit", 24, loop(false, 0), false, false);
        addByPrefix("shit-censor", offset(), "Censor Shit", 24, loop(false, 0), false, false);
    }

}