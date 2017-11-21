package ;

import openfl.Vector;
using StringTools;

// Project settings to use when testing the compiler in --wait mode.
// --haxeflag=--connect --haxeflag=6000 --haxeflag=--times

class TestIssue528 {
    public function new() {
//        trace(fn2());  // <type>
   }

    public static function testIssue528() : Void {
        var vec = new Vector<String> ();
        vec.push("testme1");
        vec.push("testme2");
        
        trace(vec[0].length);
        
        for (vecelem in vec) {
            trace(vecelem.length);
            trace(vecelem.charAt(0));
        }


        var arr:Array<String> = new Array<String>();
        arr.push("testAry1");
        arr.push("testAry2");

        for (arrelem2 in arr) {
            trace(arrelem2.length);
            trace(arrelem2.charAt(0));
        }

        for (e in new AnIter()) trace(e.length);
        for (jjjjj in 1...10 ) $type(jjjjj);

        if (vec.length > 1)
            trace("yes")
        else
            trace("no");
        if (vec.length > 1) {
            trace("yes");
        } else {
            trace("no");
        }

        var i:Int = 0;
        var ox:String = vec[0];
        var c = ox.charAt(0);
        var d = c.charAt(0);

        var i = new Vector<String>();
        var j: Vector<Array<String>>=new Vector<Array<String>>();
        var k = new Array<String>();

        var s:Int = 2;
        s >>= 2;

    }

    public static function otherParseIssues() {
        var a:?Int->Void;  // '(', ID, or '{' expected, got '?'
        var b:Int->?Float->Void;
        var f:Int->(Int->Void)->Void;  // <type or anonymous> or '?' expected, got '('
    }

    // BTW, this *is* valid Haxe.
//    var fn3: Void -> Int = () -> return 5;
//    var fn2: Void -> Int = function() return 5;

    public static function main() : Void {}

}


class AnIter {
    var i(default,default) : Int;
    public function new() { i = 0; }
    public function hasNext() : Bool { return i < 10;}
    public function next() : Array<Float> { return [i++]; }
}