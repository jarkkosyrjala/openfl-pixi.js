package pixi.loaders;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 * The json file loader is used to load in JSON data and parsing it
 * When loaded this class will dispatch a "loaded" event
 * If load failed this class will dispatch a "error" event
 * @class JsonLoader
 * @extends EventTarget
 * @constructor
 * @param {String} url the url of the JSON file
 * @param {Boolean} crossorigin
 */
import pixi.utils.EventTarget;
@:native("PIXI.ImageLoader")
extern class JsonLoader extends EventTarget
    function new(url:String, crossorigin:Bool):Void;
	var url:String;
	var baseUrl:String; // = url.replace(/[^\/]*$/, "");
	var crossorigin:Bool; // = crossorigin;
	var loaded:Bool; // = false;
	


    // constructor
    PIXI.JsonLoader.constructor = PIXI.JsonLoader;

    /**
     * This will begin loading the JSON file
     */
    function load():Void;

    /**
     * Invoke when JSON file is loaded
     * @private
     */
    //function onJSONLoaded()

    /**
     * Invoke when json file loaded
     * @private
     */
    //function onLoaded() {

    /**
     * Invoke when error occured
     * @private
     */
    //function onError()
}