package pixi.loaders;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 * A Class that loads a bunch of images / sprite sheet / bitmap font files. Once the assets have been loaded they are added to the PIXI Texture cache and can be accessed easily through PIXI.Texture.fromImage() and PIXI.Sprite.fromImage()
 * When all items have been loaded this class will dispatch a "onLoaded" event
 * As each individual item is loaded this class will dispatch a "onProgress" event
 * @class AssetLoader
 * @constructor
 * @extends EventTarget
 * @param {Array} assetURLs an array of image/sprite sheet urls that you would like loaded supported. Supported image formats include "jpeg", "jpg", "png", "gif". Supported sprite sheet data formats only include "JSON" at this time. Supported bitmap font data formats include "xml" and "fnt".
 */
import pixi.utils.EventTarget;
@:native("PIXI.AssetLoader")
extern class AssetLoader extends EventTarget
{
    function new (assetURLs:Array<String>):Void;
	
	/**
	 * The array of asset URLs that are going to be loaded
	 * @property assetURLs
	 * @type Array
	 */
	var assetURLs:Array<String>; // = assetURLs;

	var crossorigin:Bool; // = false;

    //private?
    var loadersByType:Dynamic;
    
    /**
    Fired when an item has loaded
    @event onProgress
    **/

    /**
    Fired when all the assets have loaded
    @event onComplete
    **/

    /**
     * This will begin loading the assets sequentially
     */
    function load():Void;

    /**
     * Invoked after each file is loaded
     * @private
     */
    //function onAssetLoaded()
}

