package flash.display;
#if js


import flash.events.EventDispatcher;
import flash.system.ApplicationDomain;
import flash.utils.ByteArray;


class LoaderInfo extends EventDispatcher {
	
	
	public var applicationDomain:ApplicationDomain;
	public var bytes(default, null):ByteArray;
	public var bytesLoaded(default, null):Int;
	public var bytesTotal(default, null):Int;
	public var childAllowsParent(default, null):Bool;
	public var content(default, null):DisplayObject;
	public var contentType(default, null):String;
	public var frameRate(default, null):Float;
	public var height(default, null):Int;
	public var loader(default, null):Loader;
	public var loaderURL(default, null):String;
	public var parameters(default, null):Dynamic<String>;
	public var parentAllowsChild(default, null):Bool;
	public var sameDomain(default, null):Bool;
	public var sharedEvents(default, null):EventDispatcher;
	public var url(default, null):String;
	public var width(default, null):Int;
	//static function getLoaderInfoByDefinition(object : Dynamic) : LoaderInfo;
	
	
	private function new() {
		
		super();
		
		applicationDomain = ApplicationDomain.currentDomain;
		bytesLoaded = 0;
		bytesTotal = 0;
		childAllowsParent = true;
		parameters = {};
		
	}
	
	
	public static function create(ldr:Loader):LoaderInfo {
		
		var li = new LoaderInfo();
		
		if (ldr != null) {
			
			li.loader = ldr;
			
		} else {
			
			li.url = "";
			
		}
		
		return li;
		
	}
	
	
}


#end