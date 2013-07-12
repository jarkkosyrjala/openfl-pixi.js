package pixi.loaders;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 * The sprite sheet loader is used to load in JSON sprite sheet data
 * To generate the data you can use http://www.codeandweb.com/texturepacker and publish the "JSON" format
 * There is a free version so thats nice, although the paid version is great value for money.
 * It is highly recommended to use Sprite sheets (also know as texture atlas") as it means sprite"s can be batched and drawn together for highly increased rendering speed.
 * Once the data has been loaded the frames are stored in the PIXI texture cache and can be accessed though PIXI.Texture.fromFrameId() and PIXI.Sprite.fromFromeId()
 * This loader will also load the image file that the Spritesheet points to as well as the data.
 * When loaded this class will dispatch a "loaded" event
 * @class SpriteSheetLoader
 * @extends EventTarget
 * @constructor
 * @param {String} url the url of the sprite sheet JSON file
 * @param {Boolean} crossorigin
 */
import pixi.textures.Texture;
import pixi.utils.EventTarget;
@:native("PIXI.SpineLoader")
extern class SpriteSheetLoader extends EventTarget
{
    function new(url:String, crossorigin:Bool):Void;

    var url:String;
    var baseUrl:String;
    var texture:Texture;
    var frames:Dynamic; //TODO type for frames
    var crossorigin:Bool; // = crossorigin;

	/*
	 * i use texture packer to load the assets..
	 * http://www.codeandweb.com/texturepacker
	 * make sure to set the format as "JSON"
	 */

    /**
     * This will begin loading the JSON file
     */
    function load():Void;

    /**
     * Invoke when JSON file is loaded
     * @private
     */
    //function onJSONLoaded():Void;

    /**
     * Invoke when all files are loaded (json and texture)
     * @private
     */
    //function onLoaded();
}