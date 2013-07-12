package flash.system;
#if js


class System {
	
	
	public static var totalMemory(get_totalMemory, null):Int;
	public static var useCodePage:Bool = false;
	public static var vmVersion(get_vmVersion, null):String;
	

	public static function exit(code:Int):Void {
		
		throw "System.exit is currently not supported for HTML5";
		
	}
	
	
	public static function gc():Void {
		
		
		
	}
	
	
	public static function pause():Void {
		
		throw "System.pause is currently not supported for HTML5";
		
	}
	
	
	public static function resume():Void {
		
		throw "System.resume is currently not supported for HTML5";
		
	}
	
	
	public static function setClipboard(string:String):Void {
		
		throw "System.setClipboard is currently not supported for HTML5";
		
	}
	
	
	
	
	// Getters & Setters
	
	
	
	
	private static function get_totalMemory():Int {
		
		return 0;
		
	}
	
	
	private static function get_vmVersion() {
		
		return "nme - tip";
		
	}
	
	
}


#end