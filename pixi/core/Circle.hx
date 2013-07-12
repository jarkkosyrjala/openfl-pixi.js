package pixi.core;
/**
 * @author Chad Engler <chad@pantherdev.com>
 */

/**
 * @class Circle
 * @constructor
 * @param x {Number} The X coord of the upper-left corner of the framing rectangle of this circle
 * @param y {Number} The Y coord of the upper-left corner of the framing rectangle of this circle
 * @param radius {Number} The radius of the circle
 */
@:native("PIXI.Circle")
extern class Circle
{
    function new (x:Float, y:Float, radius:Float):Void;

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
     * @property radius
     * @type Number
     * @default 0
     */
    var radius:Float;

    /**
     * @method clone
     * @return a copy of the polygon
     */
    function clone():Circle;

    /**
     * @method contains
     * @param x {Number} The X coord of the point to test
     * @param y {Number} The Y coord of the point to test
     * @return if the x/y coords are within this polygon
     */
    function contains(x:Float, y:Float):Bool;
}