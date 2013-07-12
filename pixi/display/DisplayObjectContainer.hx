package pixi.display;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */


/**
 * A DisplayObjectContainer represents a collection of display objects. It is the base class of all display objects that act as a container for other objects.
 * @class DisplayObjectContainer 
 * @extends DisplayObject
 * @constructor
 */
import pixi.display.DisplayObject;
@:native("PIXI.DisplayObjectContainer")
extern class DisplayObjectContainer extends DisplayObject
{
    function new():Void;


	/**
	 * [read-only] The of children of this container.
	 * @property children {Array}
	 */
    var children(get,never):Array<DisplayObject>;

    /**
     * Adds a child to the container.
     * @method addChild
     * @param  DisplayObject {DisplayObject}
     */
    function addChild(child:Dynamic):Void;
    
    /**
     * Adds a child to the container at a specified index. If the index is out of bounds an error will be thrown
     * @method addChildAt
     * @param DisplayObject {DisplayObject}
     * @param index {Number}
     */
    function addChildAt(child:DisplayObject, index:Int):Void;
    
    /**
     * Swaps the depth of 2 displayObjects
     * @method swapChildren
     * @param  DisplayObject {DisplayObject}
     * @param  DisplayObject2 {DisplayObject}
     */
    function swapChildren(child:DisplayObject, child2:DisplayObject):Void;
    
    /**
     * Returns the Child at the specified index
     * @method getChildAt
     * @param  index {Number}
     */
    function getChildAt(index:Int):Void;
    
    /**
     * Removes a child from the container.
     * @method removeChild
     * @param  DisplayObject {DisplayObject}
     */
    function removeChild(child:DisplayObject):Void;

    /**
     * @private
     */
    private function updateTransform():Void;

}
// constructor
//PIXI.DisplayObjectContainer.constructor = PIXI.DisplayObjectContainer;
//PIXI.DisplayObjectContainer.prototype = Object.create( PIXI.DisplayObject.prototype );