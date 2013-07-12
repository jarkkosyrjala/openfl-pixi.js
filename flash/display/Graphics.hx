package flash.display;

import flash.geom.Matrix;
import pixi.display.Graphics;
class Graphics {
	public var pixiGraphics:pixi.display.Graphics;

	public function new (inSurface:Dynamic = null) {   //TODO inSurface currently only for compatibility with current openfl html5 backend
		pixiGraphics = new pixi.display.Graphics();
	}

	public function drawRect (x:Float, y:Float, width:Float, height:Float):Void {

        pixiGraphics.drawRect(x,y,width,height);

	}
    public function lineStyle(thickness:Null<Float> = null, color:Null<Int> = null, alpha:Null<Float> = null, pixelHinting:Null<Bool> = null, scaleMode:LineScaleMode = null, caps:CapsStyle = null, joints:JointStyle = null, miterLimit:Null<Float> = null):Void {
        pixiGraphics.lineStyle(thickness, color, alpha);
    }

    public function beginFill(color:Int,alpha:Float=1) {
        pixiGraphics.beginFill(color,alpha);
    }

    public function moveTo(x:Float, y:Float):Void {
        pixiGraphics.moveTo(x,y);
    }
    public function lineTo(x:Float, y:Float):Void {
        pixiGraphics.lineTo(x,y);
    }

// end the fill
    public function endFill():Void {
        pixiGraphics.endFill();
    }
    public function clear():Void {
        pixiGraphics.clear();
    }

    //Openfl-html5
    public var nmeSurface:Dynamic;
    public var nmeExtentWithFilters:Dynamic;
    public function nmeGetFullMatrix():Matrix { return new Matrix(); }
}