package pixi.text;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 * A Text Object will create a line(s) of text using bitmap font. To split a line you can use "\n", "\r" or "\r\n"
 * You can generate the fnt files using 
 * http://www.angelcode.com/products/bmfont/ for windows or
 * http://www.bmglyph.com/ for mac.
 * @class BitmapText
 * @extends DisplayObjectContainer
 * @constructor
 * @param {String} text The copy that you would like the text to display
 * @param {Object} style The style parameters
 * @param {String} style.font The size (optional) and bitmap font id (required) eq "Arial" or "20px Arial" (must have loaded previously)
 * @param {String} [style.align="left"] An alignment of the multiline text ("left", "center" or "right")
 */
import pixi.display.DisplayObjectContainer;
@:native("PIXI.BitmapText")
extern class BitmapText extends DisplayObjectContainer
{
    function new(text:String, style:Dynamic):Void;

    var dirty:Bool; // = false

    /**
     * Set the copy for the text object
     * @method setText
     * @param {String} text The copy that you would like the text to display
     */
    function  setText(text:String):Void;

    /**
     * Set the style of the text
     * @method setStyle
     * @param {Object} style The style parameters
     * @param {String} style.font The size (optional) and bitmap font id (required) eq "Arial" or "20px Arial" (must have loaded previously)
     * @param {String} [style.align="left"] An alignment of the multiline text ("left", "center" or "right")
     */
    function  setStyle(style:Dynamic):Void; //TODO we could make text.Style class instaead of using dynamic?

    /**
     * Renders text
     * @private
     */
    private function  updateText():Void;

    /**
     * @private
     */
    private function  updateTransform():Void;

    var fonts:Dynamic; // = {};   //TODO should fonts be private?
}