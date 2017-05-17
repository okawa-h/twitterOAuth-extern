package jp.okawa.php.extern.twitterOAuth;

import jp.okawa.php.extern.twitterOAuth.Consumer;
import jp.okawa.php.extern.twitterOAuth.Request;
import jp.okawa.php.extern.twitterOAuth.Token;

@:native('Abraham\\TwitterOAuth\\SignatureMethod')
extern class SignatureMethod {

    public function getName():String;
    public function buildSignature(request:Request,consumer:Consumer,?token:Token):String;
    public function checkSignature(request:Request,consumer:Consumer,token:Token,signature:String):Bool;

}
