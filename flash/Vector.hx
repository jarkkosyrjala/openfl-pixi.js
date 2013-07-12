package flash;


private typedef VectorData<T> = Array<T>;


@:arrayAccess abstract Vector<T>(VectorData<T>) {
	
	
	public var length(get, set):Int;
	public var fixed(get, set):Bool;
	
	
	public function new(?length:Int, ?fixed:Bool):Void {
		
		this = new Array<T>();
		
	}
	
	
	public function concat(?a:VectorData<T>):Vector<T> {
		
		return this.concat(a);
		
	}
	
	
	public function copy():Vector<T> {
		
		return this.copy();
		
	}
	
	
	public function iterator<T>():Iterator<T> {
		
		return this.iterator();
		
	}
	
	
	public function join(sep:String):String {
		
		return this.join(sep);
		
	}
	
	
	public function pop():Null<T> {
		
		return this.pop();
		
	}
	
	
	public function push(x:T):Int {
		
		return this.push(x);
		
	}
	
	
	public function reverse():Void {
		
		this.reverse();
		
	}
	
	
	public function shift():Null<T> {
		
		return this.shift();
		
	}
	
	
	public function unshift(x:T):Void {
		
		this.unshift(x);
		
	}
	
	
	public function slice(pos:Int, ?end:Int):Vector<T> {
		
		return this.slice(pos, end);
		
	}
	
	
	public function sort(f:T -> T -> Int):Void {
		
		this.sort(f);
		
	}
	
	
	public function splice(pos:Int, len:Int):Vector<T> {
		
		return this.splice(pos, len);
		
	}
	
	
	public function toString():String {
		
		return this.toString();
		
	}
	
	
	public function indexOf(x:T, ?from:Int = 0):Int {
		
		for (i in from...this.length) {
			if (this[i] == x) return i;
		}
		return -1;
		
	}
	
	
	public function lastIndexOf(x:T, ?from:Int = 0):Int {
		
		var i = this.length - 1;
		while (i >= from) {
			if (this[i] == x) return i;
			i--;
		}
		return -1;
		
	}
	
	
	public inline static function ofArray<T>(a:Array<Dynamic>):Vector<T> {
		
		return new Vector<T>().concat (cast a);
		
	}
	
	
	public inline static function convert<T,U>(v:VectorData<T>):Vector<U> {
		
		return cast v;
		
	}
	
	
	@:from static public inline function fromArray<T>(a:Array<Dynamic>):Vector<T> {
		
		return cast a;
		
    }
	
	
	@:to public inline function toArray<T>():Array<T> {
		
		return this;
		
    }
	
	
	
	
	// Getters & Setters
	
	
	
	
	private function get_length():Int {
		
		return this.length;
		
	}
	
	
	private inline function set_length(value:Int):Int {
		
		if (value < this.length) {
			
			this = this.slice (0, value);
			
		}
		
		while (value > this.length) {
			
			this.push (null);
			
		}
		
		return value;
		
	}
	
	
	private function get_fixed():Bool {
		
		return false;
		
	}
	
	
	private function set_fixed(value:Bool):Bool {
		
		return value;
		
	}
	
	
}