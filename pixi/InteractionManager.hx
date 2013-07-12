package pixi;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */



/**
The interaction manager deals with mouse and touch events. Any DisplayObject can be interactive
This manager also supports multitouch.
@class InteractionManager
@constructor
@param stage {Stage}
@type Stage
*/
import pixi.display.Stage;
import pixi.core.Point;
import pixi.display.DisplayObject;
import js.html.Event;
@:native("PIXI.InteractionManager")
extern class InteractionManager
{
    function new(stage:Stage):Void;
	/**
	 * a refference to the stage
	 * @property stage
	 * @type Stage
	 */
	var stage:Stage;

	// helpers
	var tempPoint:Point;
	//var tempMatrix =  mat3.create();
	
	var mouseoverEnabled:Bool;
	
	/**
	 * the mouse data 
	 * @property mouse
	 * @type InteractionData
	 */
	var mouse:InteractionData;
	
	/**
	 * an object that stores current touches (InteractionData) by id reference 
	 * @property touchs
	 * @type Object
	 */
	var touchs:Dynamic;
	
	//tiny little interactiveData pool!
	var pool:Array<InteractionData>;
	
	var interactiveItems:Array<Dynamic>; //TODO what type?

	var last:Int;

    function  collectInteractiveSprite(displayObject:DisplayObject, iParent:Dynamic):Void; //TODO iParent type?

    function  setTarget(target:Dynamic):Void;  //TOD target type?


    function  update():Void;

    function  onMouseMove(event:Event):Void;

    function  onMouseDown(event:Event):Void;

    function  onMouseUp(event:Event):Void;

    function  hitTest(item:DisplayObject, interactionData:InteractionData):Bool;

    function  onTouchMove(event:Event):Void;

    function  onTouchStart(event:Event):Void;

    function  onTouchEnd(event:Event):Void;
}

