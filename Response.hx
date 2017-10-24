package php.twitterOAuth;

import haxe.extern.EitherType;
import php.NativeArray;

@:native('Abraham\\TwitterOAuth\\Response')
extern class Response {

	// private var apiPath : String;
	// private static inline var httpCode : Int = 0;
	// private var headers : NativeArray = [];
	// private var body : NativeArray = [];
	// private var xHeaders : NativeArray = [];
	public function setApiPath(apiPath:String):Void;
	public function getApiPath():String;
	public function setBody(body:NativeArray):Void;
	public function getBody():EitherType<NativeArray,String>;
	public function setHttpCode(httpCode:Int):Void;
	public function getHttpCode():Int;
	public function setHeaders(headers:NativeArray):Void;
	public function getsHeaders():NativeArray;
	public function setXHeaders(xHeaders:NativeArray):Void;
	public function getXHeaders():NativeArray;

}
