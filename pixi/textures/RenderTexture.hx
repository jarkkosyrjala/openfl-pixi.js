package pixi.textures;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 A RenderTexture is a special texture that allows any pixi displayObject to be rendered to it.

 __Hint__: All DisplayObjects (exmpl. Sprites) that renders on RenderTexture should be preloaded. 
 Otherwise black rectangles will be drawn instead.  
 
 RenderTexture takes snapshot of DisplayObject passed to render method. If DisplayObject is passed to render method, position and rotation of it will be ignored. For example:
 
	var renderTexture = new PIXI.RenderTexture(800, 600);
	var sprite = PIXI.Sprite.fromImage("spinObj_01.png");
	sprite.position.x = 800/2;
	sprite.position.y = 600/2;
	sprite.anchor.x = 0.5;
	sprite.anchor.y = 0.5;
	renderTexture.render(sprite);

 Sprite in this case will be rendered to 0,0 position. To render this sprite at center DisplayObjectContainer should be used:

	var doc = new PIXI.DisplayObjectContainer();
	doc.addChild(sprite);
	renderTexture.render(doc);  // Renders to center of renderTexture

 @class RenderTexture
 @extends Texture
 @constructor
 @param width {Number}
 @param height {Number}
 **/
import pixi.core.Rectangle;
import pixi.display.DisplayObject;
import pixi.utils.EventTarget;
@:native("PIXI.RenderTexture")
extern class RenderTexture extends Texture
{
    function new(?width:Int, ?height:Int):Void;
	
	var width:Int;
	var height:Int;

	var indetityMatrix:Dynamic; //TODO type for PIXI.mat3.create();
	
	//var frame:Rectangle;

    function initWebGL():Void;

    function initCanvas():Void;

    /**
     * This function will draw the display object to the texture.
     * @method render
     * @param displayObject {DisplayObject}
     * @param clear {Boolean} If true the texture will be cleared before the displayObject is drawn
     */
    function render(displayObject:DisplayObject, clear:Bool):Void;

    function renderWebGL(displayObject:DisplayObject, clear:Bool):Void;

    function renderCanvas(displayObject:DisplayObject, clear:Bool):Void;
}
