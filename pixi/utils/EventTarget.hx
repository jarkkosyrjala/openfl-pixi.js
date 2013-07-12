package pixi.utils;
/**
 * https://github.com/mrdoob/eventtarget.js/
 * THankS mr DOob!
 */

import js.html.Event;
@:native("PIXI.EventTarget")
extern class EventTarget
{
    function new():Void;

	var listeners:Dynamic; // = {};
	var on:Dynamic;
	function addEventListener(type:String, listener:Dynamic ):Void;

    var emit:Dynamic;
	function dispatchEvent( event:Event ):Void;

    var off:Dynamic;
	function removeEventListener( type:String, listener:Dynamic ):Void;
}
