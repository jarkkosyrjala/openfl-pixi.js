package pixi.utils;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */


import js.html.CanvasElement;
@:native("PIXI")
extern class Detector
{
    /**
     * This helper function will automatically detect which renderer you should be using.
     * WebGL is the preferred renderer as it is a lot fastest. If webGL is not supported by the browser then this function will return a canvas renderer
     * @method autoDetectRenderer
     * @static
     * @param width {Number} the width of the renderers view
     * @param height {Number} the height of the renderers view
     * @param view {Canvas} the canvas to use as a view, optional
     * @param transparent {Boolean} the transparency of the render view, default false
     * @default false
    */
    static function autoDetectRenderer(?width:Int, ?height:Int, ?view:CanvasElement, ?transparent:Bool):Dynamic; //TODO common type for renderer WebGLRenderer || CanvasRenderer ?
}