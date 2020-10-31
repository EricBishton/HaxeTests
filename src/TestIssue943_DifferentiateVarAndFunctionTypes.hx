package ;
class TestIssue943_DifferentiateVarAndFunctionTypes {
    public function new() {  }
    public function onAccountEnter(account:String, password:String):Void { }

    static public function main() {
        var o:OtherClass = new OtherClass();
        onAccountEnter("this", "that");
        o.onAccountEnter = onAccountEnter;  // <-- Incorrect Error: Imcompatible type: Void should be Function
    }
}

class OtherClass {
    public var onAccountEnter:String->String->Void = null;
    public function new() {}
}
