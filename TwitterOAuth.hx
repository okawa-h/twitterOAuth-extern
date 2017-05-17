package jp.okawa.php.extern.twitterOAuth;

import haxe.extern.EitherType;
import php.NativeArray;
import jp.okawa.php.extern.twitterOAuth.Consumer;
import jp.okawa.php.extern.twitterOAuth.Request;
import jp.okawa.php.extern.twitterOAuth.Token;

@:native('Abraham\\TwitterOAuth\\TwitterOAuth')
extern class TwitterOAuth extends Config {

	static inline public var API_VERSION  = '1.1';
	static inline public var API_HOST     = 'https://api.twitter.com';
	static inline public var UPLOAD_HOST  = 'https://upload.twitter.com';
	static inline public var UPLOAD_CHUNK = 40960; // 1024 * 40

	private var response:Response;
	private var bearer:String;
	private var consumer:Consumer;
	private var token:Token;
	private var signatureMethod:HmacSha1;
	public function new(consumerKey:String, consumerSecret:String, ?oauthToken:String, ?oauthTokenSecret:String):Void;
	public function setOauthToken(oauthToken:String, oauthTokenSecret:String):Void;
	public function getLastApiPath():EitherType<String,Null<Dynamic>>;
	public function getLastHttpCode():Int;
	public function getLastXHeaders():NativeArray;
	public function getLastBody():NativeArray;
	public function resetLastResponse():Void;
	public function url(path:String,parameters:NativeArray):String;
	public function oauth(path:String,parameters:NativeArray=[]):NativeArray;
	public function oauth2(path:String,parameters:NativeArray=[]):NativeArray;
	public function get(path:String,parameters:NativeArray=[]):NativeArray;
	public function post(path:String,parameters:NativeArray=[]):NativeArray;
	public function delete(path:String,parameters:NativeArray=[]):NativeArray;
	public function put(path:String,parameters:NativeArray=[]):NativeArray;
	public function upload(path:String,parameters:NativeArray=[],chunked:Bool=false):NativeArray;
	private function uploadMediaNotChunked(path:String,parameters:NativeArray):NativeArray;
	private function uploadMediaChunked(path:String,parameters:NativeArray):NativeArray;
	private function http(method:String,host:String,path:String,parameters:NativeArray):NativeArray;
	private function oAuthRequest(url:String,method:String,parameters:NativeArray):String;
	private function request(url:String,method:String,authorization:String,postfields:NativeArray):String;
	private function parseHeaders(header:String):NativeArray;
	private function encodeAppAuthorization(consumer:Consumer):String;
	private function pharRunning():Bool;

}
