package pixi.renderers.canvas;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */


/**
 * the CanvasRenderer draws the stage and all its content onto a 2d canvas. This renderer should be used for browsers that do not support webGL.
 * Dont forget to add the view to your DOM or you will not see anything :)
 * @class CanvasRenderer
 * @constructor
 * @param width {Number} the width of the canvas view
 * @default 0
 * @param height {Number} the height of the canvas view
 * @default 0
 * @param view {Canvas} the canvas to use as a view, optional
 * @param transparent {Boolean} the transparency of the render view, default false
 * @default false
 * 
 */
import pixi.display.Stage;
import js.html.CanvasRenderingContext2D;
import js.html.CanvasElement;
@:native("PIXI.CanvasRenderer")
extern class CanvasRenderer
{
    function new (?width:Int, ?height:Int, ?view:CanvasElement, ?transparent:Bool);
	var transparent:Bool;
	
	/**
	 * The width of the canvas view
	 * @property width
	 * @type Number
	 * @default 800
	 */
	var width:Int; // = width || 800;
	/**
	 * The height of the canvas view
	 * @property height
	 * @type Number
	 * @default 600
	 */
	var height:Int; // = height || 600;
	
	var refresh:Bool; // = true;
	
	/**
	 * The canvas element that the everything is drawn to
	 * @property view
	 * @type Canvas
	 */
	var view:CanvasElement; // = view || document.createElement( 'canvas' );
	
	var count:Int; // = 0;
	
	/**
	 * The canvas context that the everything is drawn to
	 * @property context
	 * @type Canvas 2d Context
	 */
	var context:CanvasRenderingContext2D; // = var view.getContext("2d");

    /**
     * Renders the stage to its canvas view
     * @method render
     * @param stage {Stage} the Stage element to be rendered
     */
    function render(stage:Stage):Void;

    /**
     * resizes the canvas view to the specified width and height
     * @param the new width of the canvas view
     * @param the new height of the canvas view
     */
    function resize(width:Int, height:Int):Void;

    /**
     * @private
     */

    //function renderDisplayObject(displayObject)


    /**
     * @private
     */
    //function renderStripFlat(strip)


    /**
     * @private
     */
    //function renderTilingSprite(sprite)

    /**
     * @private
     */
    //function renderStrip(strip)
}








