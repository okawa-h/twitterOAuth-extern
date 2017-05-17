package jp.okawa.php.extern.twitterOAuth;

import jp.okawa.php.extern.twitterOAuth.Consumer;
import jp.okawa.php.extern.twitterOAuth.Request;
import jp.okawa.php.extern.twitterOAuth.Token;
import jp.okawa.php.extern.twitterOAuth.SignatureMethod;

@:native('Abraham\\TwitterOAuth\\HmacSha1')
extern class HmacSha1 extends SignatureMethod {

	public override function getName():String;
	public override function buildSignature(request:Request,consumer:Consumer,?token:Token):String;

}
