package pixi.display;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
A Stage represents the root of the display tree. Everything connected to the stage is rendered
@class Stage
@extends DisplayObjectContainer
@constructor
@param backgroundColor {Number} the background color of the stage
@param interactive {Boolean} enable / disable interaction (default is false)
*/
import pixi.core.Point;
import pixi.display.DisplayObjectContainer;
@:native("PIXI.Stage")
extern class Stage extends DisplayObjectContainer
{
    function new (?backgroundColor:Int, ?interactive:Bool):Void;


	//var __childrenAdded = [];
	//var __childrenRemoved = [];

	// interaction!

	var interactionManager:InteractionManager; // = new InteractionManager(this);

    /**
     * @method setBackgroundColor
     * @param backgroundColor {Number}
     */
    function setBackgroundColor(backgroundColor:Int):Void;

    /**
     * This will return the point containing global coords of the mouse.
     * @method getMousePosition
     * @return {Point} The point containing the coords of the global InteractionData position.
     */
    function getMousePosition():Point;

    //Internal?
    //function __addChild(child)

    //Internal?
    //function __removeChild(child)


}