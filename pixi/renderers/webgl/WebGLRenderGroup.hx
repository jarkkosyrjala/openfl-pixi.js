package pixi.renderers.webgl;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */




/**
 * A WebGLBatch Enables a group of sprites to be drawn using the same settings.
 * if a group of sprites all have the same baseTexture and blendMode then they can be grouped into a batch. All the sprites in a batch can then be drawn in one go by the GPU which is hugely efficient. ALL sprites in the webGL renderer are added to a batch even if the batch only contains one sprite. Batching is handled automatically by the webGL renderer. A good tip is: the smaller the number of batchs there are, the faster the webGL renderer will run. 
 * @class WebGLBatch
 * @param an instance of the webGL context
 * @return {PIXI.renderers.WebGLBatch} WebGLBatch {@link PIXI.renderers.WebGLBatch}
 */
import pixi.display.Sprite;
import pixi.core.Point;
import pixi.display.DisplayObject;
import js.html.webgl.RenderingContext;
@:native("PIXI.WebGLRenderGroup")
extern class WebGLRenderGroup
{
    function new (gl:RenderingContext):Void;
	var gl = gl;
	var root:DisplayObject;
	
	var backgroundColor:Int;
	var batchs:Array<WebGLBatch>; // = [];
	var toRemove:Array<Dynamic>; //TODO proper type for array toRemove = [];


    function  setRenderable(displayObject:DisplayObject):Void;

    function  render(projection:Point):Void;

    function  handleFilter(filter:Dynamic, projection:Point):Void;      //TODO type for filter

    function  renderSpecific(displayObject:DisplayObject, projection:Point):Void;

    function  renderSpecial(renderable:Dynamic):Void;       //TODO type for renderable

    function  checkVisibility(displayObject:DisplayObject, globalVisible:Bool);

    function  updateTexture(displayObject:DisplayObject);

    function  addFilterBlocks(start, end):Void;   //TODO types for start and end

    function  removeFilterBlocks(start, end):Void;   //TODO types for start and end

    function  addDisplayObjectAndChildren(displayObject:DisplayObject):Void;

    function  removeDisplayObjectAndChildren(displayObject:DisplayObject):Void;

    function  insertObject(displayObject:DisplayObject, previousObject:Dynamic, nextObject:Dynamic):Void;   //TODO types for previousObject, nextObject

    function  insertAfter(item:DisplayObject, displayObject:DisplayObject):Void;

    function  removeObject(displayObject:DisplayObject):Void;

    /**
     * @private
     */
    //function  initTilingSprite(sprite:Sprite):Void;

    /**
     * @private
     */
    //function  renderStrip(strip, projection):Void;

    /**
     * @private
     */
    //function  renderTilingSprite(sprite, projectionMatrix)

    /**
     * @private
     */
    //function  initStrip(strip)
}