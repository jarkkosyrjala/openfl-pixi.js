package pixi.loaders;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 * The image loader class is responsible for loading images file formats ("jpeg", "jpg", "png" and "gif")
 * Once the image has been loaded it is stored in the PIXI texture cache and can be accessed though PIXI.Texture.fromFrameId() and PIXI.Sprite.fromFromeId()
 * When loaded this class will dispatch a 'loaded' event
 * @class ImageLoader
 * @extends EventTarget
 * @constructor
 * @param {String} url The url of the image
 * @param {Boolean} crossorigin
 */
import pixi.utils.EventTarget;
import pixi.textures.Texture;
@:native("PIXI.ImageLoader")
extern class ImageLoader extends EventTarget
{
    function new(url:String, crossorigin:Bool):Void;
    var texture:Texture; // = PIXI.Texture.fromImage(url, crossorigin);

    /**
     * Loads image or takes it from cache
     */
    function load():Void;

    /**
     * Invoked when image file is loaded or it is already cached and ready to use
     * @private
     */
    //function onLoaded = function()

}