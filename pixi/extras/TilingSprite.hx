package pixi.extras;
/**
 * @author Mat Groves http://matgroves.com/
 */

/**
 * A tiling sprite is a fast way of rendering a tiling image
 * @class TilingSprite
 * @extends DisplayObjectContainer
 * @constructor
 * @param texture {Texture} the texture of the tiling sprite
 * @param width {Number}  the width of the tiling sprite
 * @param height {Number} the height of the tiling sprite
 */
import pixi.core.Point;
import pixi.textures.Texture;
@:native("PIXI.TilingSprite")
extern class TilingSprite extends DisplayObjectContainer
{
    function new (texture:Texture, width:Float, height:Float):Void;
    
	var texture:Texture; // = texture;
	var width:Float;// = width;
	var height:Float; // = height;
	var renderable:Bool; // = true;
	/**
	 * The scaling of the image that is being tiled
	 * @property tileScale
	 * @type Point
	 */	
	var tileScale:Point; // = new PIXI.Point(1,1);
	/**
	 * The offset position of the image that is being tiled
	 * @property tilePosition
	 * @type Point
	 */	
	var tilePosition:Point; // = new PIXI.Point(0,0);
	
	var blendMode:Int; // = PIXI.blendModes.NORMAL

    function setTexture(texture:Texture):Void;

    //Private
    //function onTextureUpdate = function(event)

}