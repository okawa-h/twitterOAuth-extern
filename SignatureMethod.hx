package php.twitterOAuth;

import php.twitterOAuth.Consumer;
import php.twitterOAuth.Request;
import php.twitterOAuth.Token;

@:native('Abraham\\TwitterOAuth\\SignatureMethod')
extern class SignatureMethod {

    public function getName():String;
    public function buildSignature(request:Request,consumer:Consumer,?token:Token):String;
    public function checkSignature(request:Request,consumer:Consumer,token:Token,signature:String):Bool;

}
