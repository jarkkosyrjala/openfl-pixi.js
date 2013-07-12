package pixi.extras;
/**
 * @author Mat Groves http://matgroves.com/
 */

import pixi.display.DisplayObjectContainer;
import pixi.textures.Texture;
@:native("PIXI.Strip")
extern class Rope extends DisplayObjectContainer
{
    function new(texture:Texture, width:Float, height:Float):Void;

	var texture:Texture; // = texture;
	var blendMode:Int; // = PIXI.blendModes.NORMAL;

	var width:Float;
	var height:Float;
	
	var renderable:Bool; // = true;

    function setTexture(texture:Texture):Void;

    //private?
    //function onTextureUpdate = function(event)
}