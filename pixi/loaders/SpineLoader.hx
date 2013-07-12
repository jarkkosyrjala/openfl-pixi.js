package pixi.loaders;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 * based on pixi impact spine implementation made by Eemeli Kelokorpi (@ekelokorpi) https://github.com/ekelokorpi
 * 
 * Awesome JS run time provided by EsotericSoftware
 * https://github.com/EsotericSoftware/spine-runtimes
 * 
 */

/**
 * The Spine loader is used to load in JSON spine data
 * To generate the data you need to use http://esotericsoftware.com/ and export the "JSON" format
 * Due to a clash of names  You will need to change the extension of the spine file from *.json to *.anim for it to load
 * See example 12 (http://www.goodboydigital.com/pixijs/examples/12/) to see a working example and check out the source
 * You will need to generate a sprite sheet to accompany the spine data 
 * When loaded this class will dispatch a "loaded" event
 * @class Spine
 * @constructor
 * @extends EventTarget
 * @param {String} url the url of the sprite sheet JSON file
 * @param {Boolean} crossorigin
 */
import pixi.utils.EventTarget;
@:native("PIXI.SpineLoader")
extern class SpineLoader extends EventTarget
{
    function new(url:String, crossorigin:Bool):Void;

    var url:String;
    var crossorigin:Bool; // = crossorigin;
    var loaded:Bool; // = false;


    PIXI.SpineLoader.constructor = PIXI.SpineLoader;

    function load():Void;

    /**
     * Invoke when JSON file is loaded
     * @private
     */
    //function onJSONLoaded(event):Void;

    //function onLoaded()
}
