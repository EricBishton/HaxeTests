package ;
import haxe.Timer;
class TestIssue544 {
    public function new() {
        var a = Timer.delay(function(c){return (function(){trace("Haxe is great!", c);});}(3), 1000);
        // This should parse cleanly
        var v : Array<String> = {}
        v.push("testme1");
        v.push("testme2");
    }
}
