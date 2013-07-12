package pixi.display;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 * A MovieClip is a simple way to display an animation depicted by a list of textures.
 * @class MovieClip
 * @extends Sprite
 * @constructor
 * @param textures {Array} an array of {Texture} objects that make up the animation
 */
import pixi.textures.Texture;
@:native("PIXI.MovieClip")
extern class MovieClip extends Sprite
{
    function new (textures:Array<Texture>):Void;

	/**
	 * The array of textures that make up the animation
	 * @property textures
	 * @type Array
	 */
	var textures:Array<Texture>;
	
	/**
	 * [read only] The index MovieClips current frame (this may not have to be a whole number)
	 * @property currentFrame
	 * @type Number
	 */
	var currentFrame(default,never):Float;
	
	/**
	 * The speed that the MovieClip will play at. Higher is faster, lower is slower
	 * @property animationSpeed
	 * @type Number
	 */
	var animationSpeed:Float;

	/**
	 * Whether or not the movie clip repeats after playing.
	 * @property loop
	 * @type Boolean
	 */
	var loop:Bool;

	/**
	 * Function to call when a MovieClip finishes playing
	 * @property onComplete
	 * @type Function
	 */

	var onComplete:Dynamic;
	
	/**
	 * [read only] indicates if the MovieClip is currently playing
	 * @property playing
	 * @type Boolean
	 */
	var playing:Bool;

    /**
     * Stops the MovieClip
     * @method stop
     */
    function stop():Void;

    /**
     * Plays the MovieClip
     * @method play
     */
    function play():Void;

    /**
     * Stops the MovieClip and goes to a specific frame
     * @method gotoAndStop
     * @param frameNumber {Number} frame index to stop at
     */
    function gotoAndStop(frameNumber:Float):Void;

    /**
     * Goes to a specific frame and begins playing the MovieClip
     * @method gotoAndPlay
     * @param frameNumber {Number} frame index to start at
     */
    function gotoAndPlay(frameNumber:Float)  :Void;
}

// constructor
//PIXI.MovieClip.constructor = PIXI.MovieClip;
//PIXI.MovieClip.prototype = Object.create( PIXI.Sprite.prototype );

