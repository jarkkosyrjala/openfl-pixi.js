package pixi.textures;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

//PIXI.TextureCache = {};
//PIXI.FrameCache = {};

/**
 * A texture stores the information that represents an image or part of an image. It cannot be added to the display list directly. To do this use PIXI.Sprite. If no frame is provided then the whole image is used
 * @class Texture
 * @extends EventTarget
 * @constructor
 * @param baseTexture {BaseTexture}
 * @param frame {Rectangle}
 */
import js.html.CanvasElement;
import pixi.core.Rectangle;
import pixi.core.Point;
import pixi.utils.EventTarget;
import js.html.HtmlElement;
@:native("PIXI.Texture")
extern class Texture extends EventTarget
{
    function new(baseTexture:BaseTexture, frame:Rectangle):Void;

	var trim:Point;

	/**
	 * The base texture of this texture
	 * @property baseTexture
	 * @type BaseTexture
	 */
	var baseTexture:BaseTexture;
	
	/**
	 * The frame specifies the region of the base texture that this texture uses
	 * @property frame
	 * @type #Rectangle
	 */
	var frame:Rectangle;
	
	var scope:Texture;

    /**
     * Specifies the rectangle region of the baseTexture
     * @method setFrame
     * @param frame {Rectangle}
     */
    function setFrame(frame:Rectangle):Void;

    /**
     *
     * Helper function that returns a texture based on an image url
     * If the image is not in the texture cache it will be  created and loaded
     * @static
     * @method fromImage
     * @param imageUrl {String} The image url of the texture
     * @return Texture
     */
    static function fromImage(imageUrl:String, ?crossorigin:String):Texture;

    /**
     *
     * Helper function that returns a texture based on a frame id
     * If the frame id is not in the texture cache an error will be thrown
     * @method fromFrame
     * @param frameId {String} The frame id of the texture
     * @return Texture
     */
    static function fromFrame(frameId:String):Texture;

    /**
     *
     * Helper function that returns a texture based on a canvas element
     * If the canvas is not in the texture cache it will be  created and loaded
     * @static
     * @method fromCanvas
     * @param canvas {Canvas} The canvas element source of the texture
     * @return Texture
     */
    static function fromCanvas(canvas:CanvasElement):Texture;

    /**
     *
     * Adds a texture to the textureCache.
     * @static
     * @method addTextureToCache
     * @param texture {Texture}
     * @param id {String} the id that the texture will be stored against.
     */
    static function addTextureToCache(texture:Texture, id:String):Void;

    /**
     *
     * Remove a texture from the textureCache.
     * @static
     * @method removeTextureFromCache
     * @param id {String} the id of the texture to be removed
     * @return {Texture} the texture that was removed
     */
    static function removeTextureFromCache(id:String):Texture;

    // this is more for webGL.. it contains updated frames..
    static var frameUpdates:Array<Texture>;

}