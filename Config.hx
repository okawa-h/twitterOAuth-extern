package php.twitterOAuth;

import php.NativeArray;

@:native('Abraham\\TwitterOAuth\\Config')
extern class Config {

	public var timeout:Int;
	public var connectionTimeout:Int;
	public var decodeJsonAsArray:Bool;
	public var userAgent:String;
	public var proxy:NativeArray;
	public var gzipEncoding:Bool;
	public function setTimeouts(connectionTimeout:Int,timeout:Int):Void;
	public function setDecodeJsonAsArray(value:Bool):Void;
	public function setUserAgent(userAgent:String):Void;
	public function setProxy():Void;
	public function setGzipEncoding(gzipEncoding:Bool):Void;

}
