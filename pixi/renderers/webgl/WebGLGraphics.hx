package pixi.renderers.webgl;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */



/**
 * A set of functions used by the webGL renderer to draw the primitive graphics data
 * @class CanvasGraphics 
 */
import pixi.core.Point;
import pixi.display.Graphics;
@:native("PIXI.WebGLGraphics")
extern class WebGLGraphics
{
    function new():Void;

    function renderGraphics(graphics:Graphics, projection:Point):Void;

    function updateGraphics(graphics:Graphics):Void;

    function buildRectangle(graphicsData:Array<Dynamic>, webGLData:Array<Dynamic>):Void;    //TODO more strict types for graphicsData and webGLData

    function buildCircle(graphicsData:Array<Dynamic>, webGLData:Array<Dynamic>):Void; //TODO more strict types for graphicsData and webGLData

    function buildLine(graphicsData:Array<Dynamic>, webGLData:Array<Dynamic>):Void; //TODO more strict types for graphicsData and webGLData

    function buildPoly(graphicsData:Array<Dynamic>, webGLData:Array<Dynamic>):Void; //TODO more strict types for graphicsData and webGLData

    function HEXtoRGB(hex:Int):Array<Int>;
}