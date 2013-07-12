openfl-pixi.js
==============

 Alternative HTML5 backend for OpenFL that uses [dev branch of pixi.js library](<https://github.com/GoodBoyDigital/pixi.js/tree/dev>) for rendering to WebGL / 2D canvas.

Currently only the following classes are partly done:
- flash.display.DisplayObject
- flash.display.DisplayObjectContainer
- flash.display.Sprite
- flash.display.Stage
- flash.display.Graphics
- flash.Lib (still needs lots of work)

All other classes are direct copies from [openfl-html5 backend](<https://github.com/openfl/openfl-html5v>) and most still need to be modified.

Here's a simple application that currently compiles (Main.hx):

    package ;

    import flash.display.DisplayObjectContainer;
    import flash.display.Sprite;
    import js.Browser;

    import flash.Lib;
    class Main extends DisplayObjectContainer{

        var s:Sprite;
        public function new():Void {
            super();
            s=new Sprite();
            s.x=100;
            s.y=100;
            var g = s.graphics;
            g.beginFill(0x00FFFF);
            g.moveTo(0,0);
            g.lineTo(-50, 100);
            g.lineTo(50, 100);
            g.lineTo(0, 0);
            g.endFill();
            g.beginFill(0x00FF00);
            g.drawRect(0,0,50,50);
            g.endFill();
            Lib.current.stage.addChild(s);

            Browser.window.requestAnimationFrame( update );
        }
        public function update(e:Float):Bool {
            Lib.renderer.render(Lib.current.stage.pixiDisplayObject);
            s.rotation+=0.1;
            Browser.window.requestAnimationFrame( update );
            return true;
        }
    }