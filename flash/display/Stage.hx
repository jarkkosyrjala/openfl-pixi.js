package flash.display;


import js.Browser;

import pixi.display.Stage;
class Stage extends DisplayObjectContainer {

	public var stageHeight (default, null):Int;
	public var stageWidth (default, null):Int;

	public function new (?backgroundColor:Int=0xFFFFFF, ?interactive:Bool=true):Void {
        pixiDisplayObject=new pixi.display.Stage(backgroundColor, interactive);
        super ();
	}
	private override function get_stage ():flash.display.Stage {
		return this;
	}
    public var mouseX:Int=0;   //TODO MouseEvent.hx
    public var mouseY:Int=0;   //TODO MouseEvent.hx
    public var frameRate:Float=60;  //TODO Lib.hx
    public function nmeQueueStageEvent(evt:js.html.Event):Void {
        //nmeUIEventsQueue[nmeUIEventsQueueIndex++] = evt;
    }
    public var backgroundColor:Int; //TODO
    public function nmeUpdateNextWake():Void {}
    public var loaderInfo:LoaderInfo;

    override public function toString():String {
        return "[Stage name=" + this.name + " id=" + _nmeId + "]";
    }
}