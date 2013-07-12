package pixi.textures;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

//TODO do we need these somewhere?
//PIXI.BaseTextureCache = {};
//PIXI.texturesToUpdate = [];
//PIXI.texturesToDestroy = [];

/**
 * A texture stores the information that represents an image. All textures have a base texture
 * @class BaseTexture
 * @extends EventTarget
 * @constructor
 * @param source {String} the source object (image or canvas)
 */
import js.html.Image;
import pixi.utils.EventTarget;
@:native("PIXI.BaseTexture")
extern class BaseTexture extends EventTarget
{
    function new(source:String):Void;
	//PIXI.EventTarget.call( this );
	
	/*
	 * The url of the texture
	 * @property imageUrl
	 * @type String
	 */
	//var imageUrl = source.src;
	
	/**
	 * [read only] The width of the base texture set when the image has loaded
	 * @property width
	 * @type Number
	 */
	var width(default,never):Float;
	/**
	 * [read only] The height of the base texture set when the image has loaded
	 * @property height
	 * @type Number
	 */
	var height(default,never):Float;
	
	/**
	 * The source that is loaded to create the texture
	 * @property source
	 * @type Image
	 */
	var source:Image;

    function destroy():Void;

    /**
     *
     * Helper function that returns a base texture based on an image url
     * If the image is not in the base texture cache it will be  created and loaded
     * @static
     * @method fromImage
     * @param imageUrl {String} The image url of the texture
     * @return BaseTexture
     */
    static function fromImage(imageUrl:String, ?crossorigin:String):BaseTexture;

}