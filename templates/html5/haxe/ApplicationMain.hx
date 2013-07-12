#if !macro
#if (openfl_html5 && !flambe)

import ::APP_MAIN_PACKAGE::::APP_MAIN_CLASS::;
import haxe.Resource;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
import flash.net.URLLoaderDataFormat;
//import flash.Assets;
import flash.Lib;

class ApplicationMain {

	private static var completed:Int;
	private static var preloader:::PRELOADER_NAME::;
	private static var total:Int;

	public static var loaders:Map <String, Loader>;
	public static var urlLoaders:Map <String, URLLoader>;

	public static function main() {
		completed = 0;
		loaders = new Map <String, Loader>();
		urlLoaders = new Map <String, URLLoader>();
		total = 0;

		//flash.Lib.setPackage("::APP_COMPANY::", "::APP_FILE::", "::APP_PACKAGE::", "::APP_VERSION::");
		flash.Lib.current.loaderInfo = flash.display.LoaderInfo.create (null);

		::if (WIN_WIDTH == "0")::::if (WIN_HEIGHT == "0")::
		flash.Lib.preventDefaultTouchMove();
		::end::::end::

		::if (PRELOADER_NAME!="")::
		preloader = new ::PRELOADER_NAME::();
		::else::
		preloader = new NMEPreloader();
		::end::
		Lib.current.addChild(preloader);
		preloader.onInit();

		::foreach assets::
		::if (type=="image")::
		var loader:Loader = new Loader();
		loaders.set("::resourceName::", loader);
		total ++;
		::elseif (type == "binary")::
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("::resourceName::", urlLoader);
		total ++;
		::elseif (type == "text")::
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("::resourceName::", urlLoader);
		total ++;
		::end::::end::

		var resourcePrefix = "NME_:bitmap_";
		for (resourceName in Resource.listNames()) {
			if (StringTools.startsWith (resourceName, resourcePrefix)) {
				var type = Type.resolveClass(StringTools.replace (resourceName.substring(resourcePrefix.length), "_", "."));
				if (type != null) {
					total++;
					var instance = Type.createInstance (type, [ 0, 0, true, 0x00FFFFFF, bitmapClass_onComplete ]);
				}
			}
		}

		if (total == 0) {
			begin();
		} else {
			for (path in loaders.keys()) {
				var loader:Loader = loaders.get(path);
				loader.contentLoaderInfo.addEventListener("complete",
          loader_onComplete);
				loader.load (new URLRequest (path));
			}

			for (path in urlLoaders.keys()) {
				var urlLoader:URLLoader = urlLoaders.get(path);
				urlLoader.addEventListener("complete", loader_onComplete);
				urlLoader.load(new URLRequest (path));
			}
		}
	}

	private static function begin():Void {
		preloader.addEventListener(Event.COMPLETE, preloader_onComplete);
		preloader.onLoaded ();
	}

	private static function bitmapClass_onComplete(instance:BitmapData):Void {
		completed++;
		var classType = Type.getClass (instance);
		Reflect.setField (classType, "preload", instance);
		if (completed == total) {
			begin ();
		}
	}

	private static function loader_onComplete(event:Event):Void {
		completed ++;
		preloader.onUpdate (completed, total);
		if (completed == total) {
			begin ();
		}
	}

	private static function preloader_onComplete(event:Event):Void {
		preloader.removeEventListener(Event.COMPLETE, preloader_onComplete);
		Lib.current.removeChild(preloader);
		preloader = null;
		if (Reflect.field(::APP_MAIN::, "main") == null)
		{
		    trace("ApplicationMain.preloader_onComplete");
		    var stage=flash.Lib.current;
		    //trace("stage"+stage.toString());
            //      nmeGetStage()
			var mainDisplayObj = Type.createInstance(DocumentClass, []);
			if (Std.is(mainDisplayObj, flash.display.DisplayObject)) {
				trace("Adding mainDisplayObj to stage");
				flash.Lib.current.addChild(cast mainDisplayObj);
		    }
		}
		else
		{
			Reflect.callMethod(::APP_MAIN::, Reflect.field (::APP_MAIN::, "main"), []);
		}
	}
}

@:build(DocumentClass.build())
class DocumentClass extends ::APP_MAIN:: {}

#else

import ::APP_MAIN_PACKAGE::::APP_MAIN_CLASS::;

class ApplicationMain {

    public static function main() {
        if (Reflect.field(::APP_MAIN::, "main") == null) {
            Type.createInstance(::APP_MAIN::, []);
        } else {
            Reflect.callMethod(::APP_MAIN::, Reflect.field(::APP_MAIN::, "main"), []);
        }
    }
}

#end
#else

import haxe.macro.Context;
import haxe.macro.Expr;

class DocumentClass {

	macro public static function build ():Array<Field> {
		var classType = Context.getLocalClass().get();
		var searchTypes = classType;
		while (searchTypes.superClass != null) {
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				var fields = Context.getBuildFields();
				var method = macro {
				    return flash.Lib.current;
					//return flash.Lib.current.stage;
				}
				fields.push ({ name: "get_stage", access: [ APrivate, AOverride ], kind: FFun({ args: [], expr: method, params: [], ret: macro :flash.display.Stage }), pos: Context.currentPos() });
				return fields;
			}
			searchTypes = searchTypes.superClass.t.get();
		}
		return null;
	}

}
#end

/*
//Basic version:
class ApplicationMain {
	
	
	static function main () {
		
		new DocumentClass ();
		
	}
	
	
}

*/