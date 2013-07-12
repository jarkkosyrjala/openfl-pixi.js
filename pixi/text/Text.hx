package pixi.text;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 * A Text Object will create a line(s) of text to split a line you can use "\n"
 * @class Text
 * @extends Sprite
 * @constructor
 * @param {String} text The copy that you would like the text to display
 * @param {Object} [style] The style parameters
 * @param {String} [style.font] default "bold 20pt Arial" The style and size of the font
 * @param {Object} [style.fill="black"] A canvas fillstyle that will be used on the text eg "red", "#00FF00"
 * @param {String} [style.align="left"] An alignment of the multiline text ("left", "center" or "right")
 * @param {String} [style.stroke] A canvas fillstyle that will be used on the text stroke eg "blue", "#FCFF00"
 * @param {Number} [style.strokeThickness=0] A number that represents the thickness of the stroke. Default is 0 (no stroke)
 * @param {Boolean} [style.wordWrap=false] Indicates if word wrap should be used
 * @param {Number} [style.wordWrapWidth=100] The width at which text will wrap
 */
import pixi.display.Sprite;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
@:native("PIXI.Text")
extern class Text extends Sprite
{
    function new (text:String, style:Dynamic):Void;

    var canvas:CanvasElement; // = document.createElement("canvas");
    var context:CanvasRenderingContext2D; // = var canvas.getContext("2d");
    //PIXI.Sprite.call(this, PIXI.Texture.fromCanvas(var canvas));

    //var setText(text);
    //var setStyle(style);
    
    //var updateText();
    var dirty:Bool; // = false;

    /**
     * Set the style of the text
     * @method setStyle
     * @param {Object} [style] The style parameters
     * @param {String} [style.font="bold 20pt Arial"] The style and size of the font
     * @param {Object} [style.fill="black"] A canvas fillstyle that will be used on the text eg "red", "#00FF00"
     * @param {String} [style.align="left"] An alignment of the multiline text ("left", "center" or "right")
     * @param {String} [style.stroke="black"] A canvas fillstyle that will be used on the text stroke eg "blue", "#FCFF00"
     * @param {Number} [style.strokeThickness=0] A number that represents the thickness of the stroke. Default is 0 (no stroke)
     * @param {Boolean} [style.wordWrap=false] Indicates if word wrap should be used
     * @param {Number} [style.wordWrapWidth=100] The width at which text will wrap
     */
    function setStyle(style:Dynamic):Void;


    /**
     * Set the copy for the text object. To split a line you can use "\n"
     * @methos setText
     * @param {String} text The copy that you would like the text to display
     */
    function setText(text:String);

    /**
     * Renders text
     * @private
     */
    private function updateText():Void;
    /**
     * Updates texture size based on canvas size
     * @private
     */
    private function updateTexture():Void;

    /**
     * @private
     */
    private function updateTransform():Void;

    /*
     * http://stackoverflow.com/users/34441/ellisbben
     * great solution to the problem!
     */
    function determineFontHeight(fontStyle:String):Float;

    /**
     * A Text Object will apply wordwrap
     * @private
     */
    private function wordWrap(text:String):String;

    function destroy(destroyTexture:Bool):Void;

    var heightCache:Dynamic; // = {};
}