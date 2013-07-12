package flash.display;

import flash.display.DisplayObjectContainer;
import pixi.display.DisplayObjectContainer;
class Sprite extends flash.display.DisplayObjectContainer {
	
    //private var element:pixi.display.DisplayObjectContainer;
	public var graphics:Graphics;
	public function new () {
		super ();
        //element=new pixi.display.DisplayObjectContainer();
        graphics=new Graphics();
        pixiContainer.addChild(graphics.pixiGraphics);
	}
}