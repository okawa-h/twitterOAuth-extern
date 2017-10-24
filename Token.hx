package php.twitterOAuth;

@:native('Abraham\\TwitterOAuth\\Token')
extern class Token {

    public var key:String;
    public var secret:String;
    public function new(key:String, secret:String):Void;
    public function __toString():String;

}
