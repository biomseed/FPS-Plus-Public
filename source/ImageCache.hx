package;

import flixel.graphics.FlxGraphic;
import openfl.utils.AssetCache;
import flixel.FlxG;
import openfl.Assets;
import openfl.display.BitmapData;

class ImageCache{

    public static var cache:Map<String,FlxGraphic> = new Map<String,FlxGraphic>();

    public static function add(path:String):Void{
        
        var data:FlxGraphic = FlxGraphic.fromBitmapData(BitmapData.fromFile(path));
        data.persist = true;

        cache.set(path, data);
    }

    public static function get(path:String):FlxGraphic{
        return FlxGraphic.fromBitmapData(BitmapData.fromFile(path));
    }

    public static function exists(path:String){
        return cache.exists(path);
    }

}