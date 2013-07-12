package pixi.display;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */


/**
 * The Graphics class contains a set of methods that you can use to create primitive shapes and lines. 
 * It is important to know that with the webGL renderer only simple polys can be filled at this stage
 * Complex polys will not be filled. Heres an example of a complex poly: http://www.goodboydigital.com/wp-content/uploads/2013/06/complexPolygon.png
 * @class Graphics 
 * @extends DisplayObjectContainer
 * @constructor
 */
import pixi.display.DisplayObjectContainer;
@:native("PIXI.Graphics")
extern class Graphics extends DisplayObjectContainer
{
    function new():Void;
	
	//var renderable = true;
	
	var fillAlpha:Float; // = 1;
	
	var lineWidth:Float; // = 0;
	var lineColor:String; // = "black";
	
	var graphicsData:Array<Dynamic>; //TODO more strict type for graphicsData
	
	var currentPath:Dynamic; // TODO more strict type for  currentPath = {points:[]};


    /**
     * Specifies a line style used for subsequent calls to Graphics methods such as the lineTo() method or the drawCircle() method.
     * @method lineStyle
     * @param lineWidth {Number}
     * @param color {Number}
     * @param alpha {Number}
     */
    function lineStyle(lineWidth:Float, color:Int, ?alpha:Float):Void;

    /**
     * Moves the current drawing position to (x, y).
     * @method moveTo
     * @param x {Number}
     * @param y {Number}
     */
    function moveTo(x:Float, y:Float):Void;

    /**
     * Draws a line using the current line style from the current drawing position to (x, y); the current drawing position is then set to (x, y).
     * @method lineTo
     * @param x {Number}
     * @param y {Number}
     */
    function lineTo(x:Float, y:Float):Void;

    /**
     * Specifies a simple one-color fill that subsequent calls to other Graphics methods (such as lineTo() or drawCircle()) use when drawing.
     * @method beginFill
     * @param color {uint} the color of the fill
     * @param alpha {Number} the alpha
     */
    function beginFill(color:Int, ?alpha:Float):Void;

    /**
     * Applies a fill to the lines and shapes that were added since the last call to the beginFill() method.
     * @method endFill
     */
    function endFill():Void;

    /**
     * @method drawRect
     * @param x {Number}
     * @param y {Number}
     * @param width {Number}
     * @param height {Number}
     */
    function drawRect( x:Float, y:Float, width:Float, height:Float ):Void;

    /**
     * Draws a circle.
     * @method drawCircle
     * @param x {Number}
     * @param y {Number}
     * @param radius {Number}
     */
    function drawCircle( x:Float, y:Float, radius:Float):Void;
    /**
     * Draws an elipse.
     * @method drawElipse
     * @param x {Number}
     * @param y {Number}
     * @param width {Number}
     * @param height {Number}
     */
    function drawElipse( x:Float, y:Float, width:Float, height:Float):Void;

    /**
     * Clears the graphics that were drawn to this Graphics object, and resets fill and line style settings.
     * @method clear
     */
    function clear():Void;

    // SOME TYPES:
    static var POLY:Int; // = 0;
    static var RECT:Int; // = 1;
    static var CIRC:Int; // = 2;
    static var ELIP:Int; // = 3;
}