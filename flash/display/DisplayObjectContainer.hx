package flash.display;

import pixi.display.DisplayObjectContainer;
class DisplayObjectContainer extends InteractiveObject {
	
	
	private var children:Array<DisplayObject>;
    private var pixiContainer:pixi.display.DisplayObjectContainer;

	public function new () {

        if(pixiDisplayObject==null) {
            pixiDisplayObject=new pixi.display.DisplayObjectContainer();
        }
        pixiContainer=cast(pixiDisplayObject);
        children = new Array<DisplayObject> ();
        super ();
	}
	
	
	public function addChild (child:DisplayObject):DisplayObject {
		
		if (child != null) {
			children.push (child);
			child.parent = this;
			
			if (child.pixiDisplayObject != null && pixiDisplayObject != null) {
                pixiContainer.addChild(child.pixiDisplayObject);
			}
		}
		return child;
	}
	
	
	public function removeChild (child:DisplayObject):DisplayObject {
		
		if (child != null && child.parent == this) {
			
			children.remove (child);
			
			if (child.pixiDisplayObject != null && pixiDisplayObject != null) {

                pixiContainer.removeChild(child.pixiDisplayObject);
				
			}
			
		}
		return child;
	}
	
	
}