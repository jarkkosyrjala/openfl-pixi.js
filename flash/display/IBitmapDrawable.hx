package flash.display;
#if js


import flash.display.BlendMode;
import flash.geom.ColorTransform;
import flash.geom.Matrix;
import flash.geom.Rectangle;


interface IBitmapDrawable {
	
	function drawToSurface(inSurface:Dynamic, matrix:Matrix, colorTransform:ColorTransform, blendMode:BlendMode, clipRect:Rectangle, smoothing:Bool):Void;
	
}


#end