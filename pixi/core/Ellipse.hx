package pixi.core;
/**
 * @author Chad Engler <chad@pantherdev.com>
 */

/**
 * @class Ellipse
 * @constructor
 * @param x {Number} The X coord of the upper-left corner of the framing rectangle of this circle
 * @param y {Number} The Y coord of the upper-left corner of the framing rectangle of this circle
 * @param width {Number} The overall height of this ellipse
 * @param height {Number} The overall width of this ellipse
 */
@:native("PIXI.Ellipse")
extern class Ellipse
{
    function new (x:Float, y:Float, width:Float, height:Float):Void;
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
     * @return a copy of the polygon
     */
    function clone():Ellipse;

    /**
     * @method contains
     * @param x {Number} The X coord of the point to test
     * @param y {Number} The Y coord of the point to test
     * @return if the x/y coords are within this polygon
     */
    function contains(x:Float, y:Float):Bool;

    function getBounds():Rectangle;

}


