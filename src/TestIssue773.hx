package ;
import haxe.Constraints.Function;

class TestIssue773 {
    static function main() {
        trace("Haxe is great!");
        var callback:Void->String = function():String {
            return "test";
        };

        var callback2:Void->String;
        callback2 = callback;
        callback2 = function():String { return ""};
        callback2 = function() { return ""};
        callback2 = new Function();
        callback2 = ()->return "";
        callback2 = ()->"";
        callback2 = cast((a,b)->0, Function);
        callback2 = null;

        var callback3 = ()->1;
        callback3 = ()->2;
        callback3 = ()->"";     // Should have error; type of callback3 is inferred as Void->Int.
        callback3 = null;
    }
}
