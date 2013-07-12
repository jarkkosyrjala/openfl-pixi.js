package pixi.extras;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 * based on pixi impact spine implementation made by Eemeli Kelokorpi (@ekelokorpi) https://github.com/ekelokorpi
 * 
 * Awesome JS run time provided by EsotericSoftware
 * https://github.com/EsotericSoftware/spine-runtimes
 * 
 */

/**
 * A class that enables the you to import and run your spine animations in pixi.
 * Spine animation data needs to be loaded using the PIXI.AssetLoader or PIXI.SpineLoader before it can be used by this class
 * Also due to a clash of names  You will need to change the extension of the spine file from *.json to *.anim for it to load
 * See example 12 (http://www.goodboydigital.com/pixijs/examples/12/) to see a working example and check out the source
 * @class Spine
 * @constructor
 * @extends DisplayObjectContainer
 * @param {String} url the url of the spine anim file to be used
 */
import pixi.display.Sprite;
import pixi.display.DisplayObjectContainer;
@:native("PIXI.Spine")
extern class Spine extends DisplayObjectContainer
{
    function new(url:String):Void;

	var spineData:Dynamic; //= PIXI.AnimCache[url];
	
	var count:Int; // = 0;
	
	var sprites:Array<Sprite>; // = [];
	
	var skeleton:Dynamic; //= new spine.Skeleton(spineData);

	var stateData:Dynamic; //= new spine.AnimationStateData(spineData);
	var state:Dynamic; // = new spine.AnimationState(stateData);

    function updateTransform():Void;

    /*
     * Awesome JS run time provided by EsotericSoftware
     *
     * https://github.com/EsotericSoftware/spine-runtimes
     *
     */

    var spine:Dynamic; // = {};
}
