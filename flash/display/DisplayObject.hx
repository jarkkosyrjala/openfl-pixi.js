package flash.display;

import flash.events.EventDispatcher;
import js.html.CanvasElement;
import flash.geom.Rectangle;
import flash.geom.Point;
import flash.geom.Matrix;
class DisplayObject extends EventDispatcher {
	public var parent (default, null):DisplayObject;
	public var stage (get, null):Stage;
	public var x (get, set):Float;
	public var y (get, set):Float;
    public var rotation (get, set):Float;

    public var scaleX (get, set):Float;
    public var scaleY (get, set):Float;
	
	public var pixiDisplayObject:pixi.display.DisplayObject;
	
	public function new () {
        super();
        if(pixiDisplayObject==null) {
            pixiDisplayObject=new pixi.display.DisplayObject();
        }
	}
	
	
	private function get_stage ():Stage {
		
		if (parent != null) {
			
			return parent.stage;
			
		}
		
		return null;
		
	}

    private function get_rotation ():Float {
        return pixiDisplayObject.rotation;    //TODO rad to Degree

    }


    private function set_rotation (value:Float):Float {
        pixiDisplayObject.rotation=value;   //TODO Degree to rad?
        return value;
    }
	
	private function get_x ():Float {
        return pixiDisplayObject.position.x;
		
	}
	
	
	private function set_x (value:Float):Float {
        pixiDisplayObject.position.x=value;
		return value;
	}

    private function get_scaleX ():Float {
        return pixiDisplayObject.scale.x;

    }

    private function set_scaleX (value:Float):Float {
        pixiDisplayObject.scale.x=value;
        return value;
    }

    private function get_scaleY ():Float {
        return pixiDisplayObject.scale.y;

    }

    private function set_scaleY (value:Float):Float {
        pixiDisplayObject.scale.y=value;
        return value;
    }
	
	
	private function get_y ():Float {
		
		return pixiDisplayObject.position.y;
		
	}
	
	
	private function set_y (value:Float):Float {
        pixiDisplayObject.position.y = value;
		return value;
	}


    override public function toString():String {

        return "[DisplayObject name=" + this.name + " id=" + _nmeId + "]";

    }
    var name:String;

    //Ugly hacks to get project compiled
    private var _nmeId:Int=0;

    function validateBounds():Void {}
    public var mouseEnabled:Bool=false;
	public var visible:Bool=true;

    private static inline var GRAPHICS_INVALID:Int = 1 << 1;
    private static inline var MATRIX_INVALID:Int = 1 << 2;
    private static inline var MATRIX_CHAIN_INVALID:Int = 1 << 3;
    private static inline var MATRIX_OVERRIDDEN:Int = 1 << 4;
    private static inline var TRANSFORM_INVALID:Int = 1 << 5;
    private static inline var BOUNDS_INVALID:Int = 1 << 6;
    private static inline var RENDER_VALIDATE_IN_PROGRESS:Int = 1 << 10;
    private static inline var ALL_RENDER_FLAGS:Int = GRAPHICS_INVALID | TRANSFORM_INVALID | BOUNDS_INVALID;


    private var nmeCombinedVisible:Bool=false;
    private var _matrixInvalid:Bool=false;
    private var _matrixChainInvalid:Bool=false;
    private function nmeValidateMatrix():Void {}
    private function handleGraphicsUpdated(nmeGraphics:Dynamic):Void {}
    private function nmeApplyFilters(value:Dynamic):Void {}
    private var nmeSurface:Dynamic;
    public function nmeGetFullMatrix():Matrix { return new Matrix(); }
    var nmeCombinedAlpha:Float=1;
    public var alpha:Float=1;
    public function nmeTestFlag(val:Dynamic):Bool { return false; }

    function globalToLocal(pt:Point):Point { return pt; }
    var width:Float;
    var height:Float;
    public function nmeGetObjectUnderPoint(point:Point):DisplayObject { return null; }
    var _boundsInvalid:Bool;
    var nmeBoundsRect:Rectangle;
    private inline function nmeClearFlag(mask:Int):Void { }
    //function nmeSetDimensions():Void {}
    //function nmeInvalidateBounds():Void {}
    //var name:String;
    //var _nmeId:Int;
    private inline function nmeSetDimensions():Void { }
    private inline function nmeInvalidateBounds():Void {}
    private function nmeRender(inMask:CanvasElement = null, clipRect:Rectangle = null) { }
    private function nmeGetGraphics():Graphics { return null; }
}