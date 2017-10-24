package php.twitterOAuth;

import php.twitterOAuth.Consumer;
import php.twitterOAuth.Request;
import php.twitterOAuth.Token;
import php.twitterOAuth.SignatureMethod;

@:native('Abraham\\TwitterOAuth\\HmacSha1')
extern class HmacSha1 extends SignatureMethod {

	public override function getName():String;
	public override function buildSignature(request:Request,consumer:Consumer,?token:Token):String;

}
