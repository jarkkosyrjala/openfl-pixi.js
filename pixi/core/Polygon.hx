package pixi.core;
/**
 * @author Adrien Brault <adrien.brault@gmail.com>
 */

/**
 * @class Polygon
 * @constructor
 * @param points {Array}
 */
@:native("PIXI.Polygon")
extern class Polygon //= function(points)
{
    function new(points:Array<Float>):Void;
	var points:Array<Float>;
    /**
     * @method clone
     * @return a copy of the polygon
     */
    function clone():Polygon;

    /**
     * @method contains
     * @param x {Number} The X coord of the point to test
     * @param y {Number} The Y coord of the point to test
     * @return if the x/y coords are within this polygon
     */
    function contains(x:Float, y:Float):Bool;
}
