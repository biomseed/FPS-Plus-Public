package characters.data;

class Spooky extends CharacterInfoBase
{

    override public function new(){

        super();

        info.name = "spooky";
        info.spritePath = "week2/spooky_kids_assets";
        info.frameLoadType = sparrow;
        
        info.iconName = "spooky";
        info.focusOffset.set(150, -45);

		addByPrefix('singUP', offset(-18, 25), 'spooky UP NOTE', 24, loop(false));
		addByPrefix('singDOWN', offset(-46, -144), 'spooky DOWN note', 24, loop(false));
		addByPrefix('singLEFT', offset(124, -13), 'note sing left', 24, loop(false));
		addByPrefix('singRIGHT', offset(-130, -14), 'spooky sing right', 24, loop(false));
		addByIndices('danceLeft', offset(), 'spooky dance idle', [0, 2, 6], "", 12, loop(false));
		addByIndices('danceRight', offset(), 'spooky dance idle', [8, 10, 12, 14], "", 12, loop(false));

        info.idleSequence = ["danceLeft", "danceRight"];
    }

}