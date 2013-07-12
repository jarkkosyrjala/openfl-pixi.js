package flash.filters;
#if js


import flash.display.BitmapData;
import flash.geom.Point;
import flash.geom.Rectangle;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;


class ColorMatrixFilter extends BitmapFilter {
	
	
	public var matrix:Array<Float>;
	
	
	public function new(matrix:Array<Float> = null) {
		
		super("ColorMatrixFilter");
		
		this.matrix = matrix;
		
	}
	
	
	override public function clone():BitmapFilter {
		
		return new ColorMatrixFilter(matrix);
		
	}
	
	
	override public function nmeApplyFilter(surface:CanvasElement, rect:Rectangle = null, refreshCache:Bool = false):Void {
		
		if (rect == null) rect = new Rectangle (0, 0, surface.width, surface.height);
		var ctx:CanvasRenderingContext2D = surface.getContext('2d');
		
		var imagedata = ctx.getImageData(rect.x, rect.y, rect.width, rect.height);
		var offsetX:Int;
		
		for (i in 0...imagedata.data.length >> 2) {
			
			offsetX = i * 4;
			
			var srcR = imagedata.data[offsetX];
			var srcG = imagedata.data[offsetX + 1];
			var srcB = imagedata.data[offsetX + 2];
			var srcA = imagedata.data[offsetX + 3];
			
			imagedata.data[offsetX] = Std.int ((matrix[0]  * srcR) + (matrix[1]  * srcG) + (matrix[2]  * srcB) + (matrix[3]  * srcA) + matrix[4]);
			imagedata.data[offsetX + 1] = Std.int ((matrix[5]  * srcR) + (matrix[6]  * srcG) + (matrix[7]  * srcB) + (matrix[8]  * srcA) + matrix[9]);
			imagedata.data[offsetX + 2] = Std.int ((matrix[10] * srcR) + (matrix[11] * srcG) + (matrix[12] * srcB) + (matrix[13] * srcA) + matrix[14]);
			imagedata.data[offsetX + 3] = Std.int ((matrix[15] * srcR) + (matrix[16] * srcG) + (matrix[17] * srcB) + (matrix[18] * srcA) + matrix[19]);
			
		}
		
		ctx.putImageData(imagedata, rect.x, rect.y);
		
	}
	
	
}


#end