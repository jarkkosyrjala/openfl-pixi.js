package pixi.renderers.webgl;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

//PIXI._defaultFrame = new PIXI.Rectangle(0,0,1,1);

// an instance of the gl context..
// only one at the moment :/
//PIXI.gl;

/**
 * the WebGLRenderer is draws the stage and all its content onto a webGL enabled canvas. This renderer should be used for browsers support webGL. This Render works by automatically managing webGLBatchs. So no need for Sprite Batch's or Sprite Cloud's
 * Dont forget to add the view to your DOM or you will not see anything :)
 * @class WebGLRenderer
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
import pixi.textures.Texture;
import js.html.webgl.RenderingContext;
import js.html.CanvasElement;
import pixi.display.Stage;
@:native("PIXI.WebGLRenderer")
extern class WebGLRenderer
{
    function new(?width:Int, ?height:Int, ?view:CanvasElement, ?transparent:Bool):Void;

    var gl:RenderingContext;

	//console.log(transparent)
	var transparent = !!transparent;
	
	var width:Int;
	var height:int;
	
	var view:CanvasElement;

	// deal with losing context..	
    var scope:WebGLRenderer; // = this;
	//var view.addEventListener('webglcontextlost', function(event) { scope.handleContextLost(event); }, false)
	//var view.addEventListener('webglcontextrestored', function(event) { scope.handleContextRestored(event); }, false)

	var batchs:Array<WebGLBatch>;

    /*
    PIXI.initPrimitiveShader();
    PIXI.initDefaultShader();
    PIXI.initDefaultStripShader();
    
    PIXI.activateDefaultShader();
    */

    var batch:WebGLBatch; // = new PIXI.WebGLBatch(gl);

   	 
    //gl.enable(gl.BLEND);
    //gl.colorMask(true, true, true, var transparent);
    @:native("PIXI.projection")
    extern var projection:Point; // = new PIXI.Point(400, 300);
    
    var contextLost:Bool; // = false;
    
    var stageRenderGroup:WebGLRenderGroup; // = new PIXI.WebGLRenderGroup(var gl);

    /**
     * @private
     */
    //function getBatch():WebGLBatch;

    /**
     * @private
     */
    //function returnBatch(batch)

    /**
     * @private
     */



    /**
     * Renders the stage to its webGL view
     * @method render
     * @param stage {Stage} the PIXI.Stage element to be rendered
     */
    function render(stage:Stage):Void;

    /**
     * @private
     */

    function updateTextures():Void;

    function updateTexture(texture:Texture):Void;

    function destroyTexture(texture:Texture):Void;

    /**
     * resizes the webGL view to the specified width and height
     * @method resize
     * @param width {Number} the new width of the webGL view
     * @param height {Number} the new height of the webGL view
     */
    function resize(width:Int, height:Int):Void;
    /**
     * @private
     */
    //function handleContextLost(event):Void;
    /**
     * @private
     */
    //function handleContextRestored(event):Void;
}