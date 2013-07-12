package pixi.extras;
/**
 * @author Mat Groves http://matgroves.com/
 */

import pixi.core.Point;
import flash.display3D.textures.Texture;
@:native("PIXI.Rope")
extern class Rope extends Strip
{
    function new (texture:Texture, points:Array<Point>):Void;
	var points:Array<Point>;
    // constructor
    PIXI.Rope.constructor = PIXI.Rope;
    PIXI.Rope.prototype = Object.create( PIXI.Strip.prototype );

    function refresh():Void;
    function updateTransform():Void;
    function setTexture(texture:Texture):Void;
}