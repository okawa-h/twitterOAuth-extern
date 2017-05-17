package jp.okawa.php.extern.twitterOAuth;

@:native('Abraham\\TwitterOAuth\\Consumer')
extern class Consumer {

    public var key:String;
    public var secret:String;
    public var callbackUrl:String;
    public function new(key:String,secret:String,?callbackUrl:Null<Dynamic>):Void;
    public function __toString():String;

}
