package pixi.loaders;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */

/**
 * The xml loader is used to load in XML bitmap font data ("xml" or "fnt")
 * To generate the data you can use http://www.angelcode.com/products/bmfont/
 * This loader will also load the image file as the data.
 * When loaded this class will dispatch a "loaded" event
 * @class BitmapFontLoader
 * @extends EventTarget
 * @constructor
 * @param {String} url the url of the sprite sheet JSON file
 * @param {Boolean} crossorigin
 */
import pixi.utils.EventTarget;
@:native("PIXI.AssetLoader")
extern class BitmapFontLoader extends EventTarget
{
    function new(url:String, crossorigin:Bool):Void;
    /*
     * i use texture packer to load the assets..
     * http://www.codeandweb.com/texturepacker
     * make sure to set the format as "JSON"
     */
    var url:String; // = url;
    var baseUrl:String; // = url.replace(/[^\/]*$/, "");
    var texture = null;
    var crossorigin:Bool; // = crossorigin;

    /**
     * This will begin loading the JSON file
     */
    function load()
    {
        var ajaxRequest = new XMLHttpRequest();
        var scope = this;
        var ajaxRequest.onreadystatechange()
        {
            scope.onXMLLoaded();
        };

        var ajaxRequest.open("GET", var url, true);
        if (var ajaxRequest.overrideMimeType) var ajaxRequest.overrideMimeType("application/xml");
        var ajaxRequest.send(null)
    };

    /**
     * Invoked when XML file is loaded
     * @private
     */
    //function onXMLLoaded()

    /**
     * Invoked when all files are loaded (xml/fnt and texture)
     * @private
     */
    //function onLoaded()
}