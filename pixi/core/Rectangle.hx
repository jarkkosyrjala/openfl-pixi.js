package pixi.core;
/**
 * @author Mat Groves http://matgroves.com/
 */

/**
 * the Rectangle object is an area defined by its position, as indicated by its top-left corner point (x, y) and by its width and its height.
 * @class Rectangle
 * @constructor 
 * @param x {Number} position of the rectangle
 * @param y {Number} position of the rectangle
 * @param width {Number} of the rectangle
 * @param height {Number} of the rectangle
 */
@:native("PIXI.Rectangle")
extern class Rectangle
{
    function new (?x:Float=0, ?y:Float=0, ?width:Float=0, ?height:Float=0):Void;

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
	 * @property width
	 * @type Number
	 * @default 0
	 */
	var width:Float;
	
	/**
	 * @property height
	 * @type Number
	 * @default 0
	 */
	var height:Float;

    /**
     * @method clone
     * @return a copy of the rectangle
     */
    function clone():Rectangle;

    /**
     * @method contains
     * @param x {Number} The X coord of the point to test
     * @param y {Number} The Y coord of the point to test
     * @return if the x/y coords are within this polygon
     */
    function contains(x:Float, y:Float):Bool;
}