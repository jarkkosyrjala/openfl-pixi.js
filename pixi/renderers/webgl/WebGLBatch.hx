package pixi.renderers.webgl;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

//PIXI._batchs = [];


/**
 * A WebGLBatch Enables a group of sprites to be drawn using the same settings.
 * if a group of sprites all have the same baseTexture and blendMode then they can be grouped into a batch. All the sprites in a batch can then be drawn in one go by the GPU which is hugely efficient. ALL sprites in the webGL renderer are added to a batch even if the batch only contains one sprite. Batching is handled automatically by the webGL renderer. A good tip is: the smaller the number of batchs there are, the faster the webGL renderer will run. 
 * @class WebGLBatch
 * @param an instance of the webGL context
 * @return {PIXI.renderers.WebGLBatch} WebGLBatch {@link PIXI.renderers.WebGLBatch}
 */
import pixi.display.Sprite;
import pixi.display.BlendModes;
import js.html.webgl.Buffer;
import js.html.webgl.RenderingContext;
@:native("PIXI.WebGLBatch")
extern class WebGLBatch //
{
    function new(gl:RenderingContext):Void;

	var gl:RenderingContext; // = gl;
	
	var size:Int; // = 0; /=TODO or is size a float instead of Int?

	var vertexBuffer:Buffer; // =  gl.createBuffer();
	var indexBuffer:Buffer; // =  gl.createBuffer();
	var uvBuffer:Buffer; // =  gl.createBuffer();
	var colorBuffer:Buffer; // =  gl.createBuffer();
	var blendMode:Int; // = PIXI.blendModes.NORMAL;
	var dynamicSize:Float; // = 1;   //TODO or is dynamicSize an Int?
    /**
     * Cleans the batch so that is can be returned to an object pool and reused
     */
    function clean():Void;

    /*
     * recreates the buffers in the event of a context loss
     */
    function restoreLostContext(gl:RenderingContext):Void;

    /**
     * inits the batch's texture and blend mode based if the supplied sprite
     * @method init
     * @param sprite {Sprite} the first sprite to be added to the batch. Only sprites with the same base texture and blend mode will be allowed to be added to this batch
     */
    function init(sprite:Sprite):Void;

    /**
     * inserts a sprite before the specified sprite
     * @method insertBefore
     * @param sprite {Sprite} the sprite to be added
     * @param nextSprite {nextSprite} the first sprite will be inserted before this sprite
     */
    function insertBefore(sprite:Sprite, nextSprite:Sprite):Void;

    /**
     * inserts a sprite after the specified sprite
     * @method insertAfter
     * @param sprite {Sprite} the sprite to be added
     * @param  previousSprite {Sprite} the first sprite will be inserted after this sprite
     */
    function insertAfter(sprite:Sprite, previousSprite:Sprite):Void;

    /**
     * removes a sprite from the batch
     * @method remove
     * @param sprite {Sprite} the sprite to be removed
     */
    function remove(sprite:Sprite):Void;
    /**
     * Splits the batch into two with the specified sprite being the start of the new batch.
     * @method split
     * @param sprite {Sprite} the sprite that indicates where the batch should be split
     * @return {WebGLBatch} the new batch
     */
    function split(sprite:Sprite):WebGLBatch;

    /**
     * Merges two batchs together
     * @method merge
     * @param batch {WebGLBatch} the batch that will be merged
     */
    function merge(batch:WebGLBatch):Void;

    /**
     * Grows the size of the batch. As the elements in the batch cannot have a dynamic size this function is used to increase the size of the batch. It also creates a little extra room so that the batch does not need to be resized every time a sprite is added
     * @methos growBatch
     */
    function growBatch():Void;

    /**
     * Refresh's all the data in the batch and sync's it with the webGL buffers
     * @method refresh
     */
    function refresh():Void;

    /**
     * Updates all the relevant geometry and uploads the data to the GPU
     * @method update
     */
    function update():Void;

    /**
     * Draws the batch to the frame buffer
     * @method render
     */
    function render(?start:Int, ?end:Int):Void;

}