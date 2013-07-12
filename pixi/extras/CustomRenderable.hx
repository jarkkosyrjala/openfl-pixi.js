package pixi.extras;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */


/**
 * Need to finalize this a bit more but works! Its in but will be working on this feature properly next..:)
 * @class CustomRenderable 
 * @extends DisplayObject
 * @constructor
 */
import pixi.display.DisplayObject;
@:native("PIXI.CustomRenderable")
extern class CustomRenderable extends DisplayObject
{
    function new():Void;
    // override!
    function renderCanvas(renderer:Dynamic):Void;

    // override!
    function initWebGL(renderer:Dynamic):Void;

    // not sure if both needed? but ya have for now!
    // override!
    function renderWebGL(renderGroup:WebGLRenderGroup, projectionMatrix:Dynamic):Void;  //TODO type for projectionMatrix

}
