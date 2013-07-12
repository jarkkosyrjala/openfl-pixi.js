package pixi;
/**
* @class InteractionData
* @constructor
* (Originally defined in InteractionManager.js)
*/
import pixi.display.DisplayObject;
import pixi.display.Sprite;
import pixi.core.Point;
@:native("PIXI.InteractionData")
extern class InteractionData {
    public function new():Void;

    /**
	* This point stores the global coords of where the touch/mouse event happened
	* @property global
	* @type Point
	*/
    var global:Point;

    // this is here for legacy... but will remove
    var local:Point;

    /**
	* The target Sprite that was interacted with
	* @property target
	* @type Sprite
	*/
    var target:Sprite;

    /**
     * This will return the local coords of the specified displayObject for this InteractionData
     * @method getLocalPosition
     * @param displayObject {DisplayObject} The DisplayObject that you would like the local coords off
     * @return {Point} A point containing the coords of the InteractionData position relative to the DisplayObject
     */
    function getLocalPosition(displayObject:DisplayObject):Point;
}