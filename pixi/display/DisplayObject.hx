package pixi.display;

/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 * this is the base class for all objects that are rendered on the screen.
 * @class DisplayObject
 * @constructor
 */
import pixi.core.Rectangle;
import pixi.core.Point;
@:native("PIXI.Point")
extern class DisplayObject
{
    function new():Void;

    var last:DisplayObject;
	var first:DisplayObject;

	/**
	 * The coordinate of the object relative to the local coordinates of the parent.
	 * @property position
	 * @type Point
	 */
	var position:Point;
	
	/**
	 * The scale factor of the object.
	 * @property scale
	 * @type Point
	 */
	var scale:Point; //{x:1, y:1};
	
	/**
	 * The pivot point of the displayObject that it rotates around
	 * @property pivot
	 * @type Point
	 */
	var pivot:Point;
	
	/**
	 * The rotation of the object in radians.
	 * @property rotation
	 * @type Number
	 */
	var rotation:Float;
	
	/**
	 * The opacity of the object.
	 * @property alpha
	 * @type Number
	 */	
	var alpha:Float;
	
	/**
	 * The visibility of the object.
	 * @property visible
	 * @type Boolean
	 */	
	var visible:Bool;
	var worldVisible:Bool;
	
	/**
	 * [read-only] The display object container that contains this display object.
	 * @property parent
	 * @type DisplayObjectContainer
	 */	
	var parent:DisplayObjectContainer;
	
	/**
	 * [read-only] The stage the display object is connected to, or undefined if it is not connected to the stage.
	 * @property stage
	 * @type Stage
	 */	
	var stage:Stage;
	
	/**
	 * This is the defined area that will pick up mouse / touch events. It is null by default.
	 * Setting it is a neat way of optimising the hitTest function that the interactionManager will use (as it will not need to hit test all the children)
	 * @property hitArea
	 * @type Rectangle
	 */	
	var hitArea:Rectangle;

	var worldAlpha:Float;
	var color:Array<Dynamic>; //TODO type for color;
	
	var worldTransform:Dynamic; //TODO type for PIXI.mat3.create()//mat3.identity();
	var localTransform:Dynamic; //TODO type for PIXI.mat3.create()//mat3.identity();

    //@:native("dynamic")       //TODO what can be done with reserved keyword dynamic??
	//var dynamic(default,default):Bool;

	var childIndex:Int; // = 0;
	
	var renderable:Bool;
	
	// [readonly] best not to toggle directly! use setInteractive()
	var interactive:Bool;
	
	/**
	 * This is used to indicate if the displayObject should display a mouse hand cursor on rollover
	 * @property buttonMode
	 * @type Boolean
	 */
	var buttonMode:Bool;

    // TODO - where are below methods defined in JS?
	/*
	 * MOUSE Callbacks
	 */
	
	/**
	 * A callback that is used when the users clicks on the displayObject with their mouse
	 * @method click
	 * @param interactionData {InteractionData}
	 */
    var click:Dynamic;

	/**
	 * A callback that is used when the user clicks the mouse down over the sprite
	 * @method mousedown
	 * @param interactionData {InteractionData}
	 */
    var mousedown:Dynamic;
	/**
	 * A callback that is used when the user releases the mouse that was over the displayObject
	 * for this callback to be fired the mouse must have been pressed down over the displayObject
	 * @method mouseup
	 * @param interactionData {InteractionData}
	 */
    var mouseup:Dynamic;
	/**
	 * A callback that is used when the user releases the mouse that was over the displayObject but is no longer over the displayObject
	 * for this callback to be fired, The touch must have started over the displayObject
	 * @method mouseupoutside
	 * @param interactionData {InteractionData}
	 */
    var mouseupoutside:Dynamic;
	/**
	 * A callback that is used when the users mouse rolls over the displayObject
	 * @method mouseover
	 * @param interactionData {InteractionData}
	 */
    var mouseover:Dynamic;
	/**
	 * A callback that is used when the users mouse leaves the displayObject
	 * @method mouseout
	 * @param interactionData {InteractionData}
	 */
    var mouseout:Dynamic;
	
	/*
	 * TOUCH Callbacks
	 */
	
	/**
	 * A callback that is used when the users taps on the sprite with their finger
	 * basically a touch version of click
	 * @method tap
	 * @param interactionData {InteractionData}
	 */
    var tap:Dynamic;
	/**
	 * A callback that is used when the user touch's over the displayObject
	 * @method touchstart
	 * @param interactionData {InteractionData}
	 */
    var touchstart:Dynamic;
	/**
	 * A callback that is used when the user releases a touch over the displayObject
	 * @method touchend
	 * @param interactionData {InteractionData}
	 */
    var touchend:Dynamic;
	/**
	 * A callback that is used when the user releases the touch that was over the displayObject
	 * for this callback to be fired, The touch must have started over the sprite
	 * @method touchendoutside
	 * @param interactionData {InteractionData}
	 */
    var touchendoutside:Dynamic;
    /**
     * Indicates if the sprite will have touch and mouse interactivity. It is false by default
     * @method setInteractive
     * @param interactive {Boolean}
     */
    function setInteractive(interactive:Bool):Void;

    /**
     * Sets a mask for the displayObject. A mask is an object that limits the visibility of an object to the shape of the mask applied to it.
     * In PIXI a regular mask must be a PIXI.Ggraphics object. This allows for much faster masking in canvas as it utilises shape clipping.
     * To remove a mask, set this property to null.
     * @property mask
     * @type PIXI.Graphics
     */
    var mask:Graphics;

    //private
    //function removeFilter():Void;
}

// constructor
//PIXI.DisplayObject.constructor = PIXI.DisplayObject;

