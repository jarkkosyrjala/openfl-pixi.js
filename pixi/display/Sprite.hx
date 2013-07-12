package pixi.display;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */
import pixi.core.Point;
import pixi.textures.Texture;
/**
@class Sprite
@extends DisplayObjectContainer
@constructor
@param texture {Texture}
@type String
*/
@:native("PIXI.Sprite")
extern class Sprite extends DisplayObjectContainer
{
    function new(?texture:Texture):Void;
	
	 /**
	 * The anchor sets the origin point of the texture.
	 * The default is 0,0 this means the textures origin is the top left 
	 * Setting than anchor to 0.5,0.5 means the textures origin is centered
	 * Setting the anchor to 1,1 would mean the textures origin points will be the bottom right
     * @property anchor
     * @type Point
     */
	var anchor:Point;
	
	/**
	 * The texture that the sprite is using
	 * @property texture
	 * @type Texture
	 */
	var texture:Texture;
	
	/**
	 * The blend mode of sprite.
	 * currently supports PIXI.blendModes.NORMAL and PIXI.blendModes.SCREEN
	 * @property blendMode
	 * @type uint
	 */
	var blendMode:Int; // = BlendModes.NORMAL;
	
	/**
	 * The width of the sprite (this is initially set by the texture)
	 * @property width
	 * @type #Number
	 */
	var width:Float;
	
	/**
	 * The height of the sprite (this is initially set by the texture)
	 * @property height
	 * @type #Number
	 */
	var height:Float;

    /**
     @method setTexture
     @param texture {Texture} The PIXI texture that is displayed by the sprite
     */
    function setTexture(texture:Texture):Void;

    // some helper functions..

    /**
     *
     * Helper function that creates a sprite that will contain a texture from the TextureCache based on the frameId
     * The frame ids are created when a Texture packer file has been loaded
     * @method fromFrame
     * @static
     * @param frameId {String} The frame Id of the texture in the cache
     * @return {Sprite} A new Sprite using a texture from the texture cache matching the frameId
     */
    static function fromFrame(frameId:String):Sprite;

    /**
     *
     * Helper function that creates a sprite that will contain a texture based on an image url
     * If the image is not in the texture cache it will be loaded
     * @method fromImage
     * @static
     * @param The image url of the texture
     * @return {Sprite} A new Sprite using a texture from the texture cache matching the image id
     */
    static function fromImage(imageId:String):Sprite;
}


