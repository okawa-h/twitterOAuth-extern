package jp.okawa.php.extern.twitterOAuth;

import php.NativeArray;
import jp.okawa.php.extern.twitterOAuth.Consumer;
import jp.okawa.php.extern.twitterOAuth.Request;
import jp.okawa.php.extern.twitterOAuth.Token;

@:native('Abraham\\TwitterOAuth\\Request')
extern class Request {

    public var parameters:NativeArray;
    public var httpMethod:String;
    public var httpUrl:String;
    public static inline var version = '1.0';

    public function new(httpMethod:String,httpUrl:String,parameters:NativeArray=[]):Void;
    public static function fromConsumerAndToken(consumer:Consumer,?token:Token,httpMethod:String,httpUrl:String,parameters:NativeArray=[]):Request;
    public function setParameter(name:String, value:String):Void;
    public function getParameter(name:String):String;
    public function getParameters():NativeArray;
    public function removeParameter(name:String):Void;
    public function getSignableParameters():String;
    public function getSignatureBaseString():String;
    public function getNormalizedHttpMethod():String;
    public function getNormalizedHttpUrl():String;
    public function toUrl():String;
    public function toPostdata():String;
    public function toHeader():String;
    public function __toString():String;
    public function signRequest(signatureMethod:SignatureMethod,consumer:Consumer,?token:Token):Void;
    public function buildSignature(signatureMethod:SignatureMethod,consumer:Consumer,?token:Token):String;
    public static function generateNonce():String;

}
