package pixi.utils;
// http://paulirish.com/2011/requestanimationframe-for-smart-animating/
// http://my.opera.com/emoller/blog/2011/12/20/requestanimationframe-for-smart-er-animating

// requestAnimationFrame polyfill by Erik Möller. fixes from Paul Irish and Tino Zijdel

// MIT license
import pixi.display.DisplayObject;
extern class Utils
{
    @:native("HEXtoRGB");
    extern static function hEXtoRGB(hex:int):Array<Int>;

    @:native("PIXI.AjaxRequest");
    extern static function ajaxRequest():Dynamic; // returns XMLHttpRequest || ActiveXObject || false

    /*
     * DEBUGGING ONLY
     */
    @:native("PIXI.runList");
    extern static function runList(item:DisplayObject):Void;

}



