package pixi.core;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 * The Point object represents a location in a two-dimensional coordinate system, where x represents the horizontal axis and y represents the vertical axis.
 * @class Point
 * @constructor 
 * @param x {Number} position of the point
 * @param y {Number} position of the point
 */
@:native("PIXI.Point")
extern class Point
{
    function new(?x:Float=0,?y:Float=0);
	/**
	 * @property x 
	 * @type Number
	 * @default 0
	 */
	var x:Float;
	
	/**
	 * @property y
	 * @type Number
	 * @default 0
	 */
	var y:Float;

    /**
     * @method clone
     * @return a copy of the point
     */
    function clone():Point;
}

