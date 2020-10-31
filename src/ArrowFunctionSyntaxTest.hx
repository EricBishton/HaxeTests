package ;
import openfl.Vector;
using Std;

using Std;

class ArrowFunctionSyntaxTest {
    public function new() {
    }
    public static function main() {
        var array = new Array<SomeClass<String>>();

        var normalfn = function (a,b) return b + a;
        var fn = (a,b) -> return a + b;
        var fn2 = (a:Int,b:String) -> return b + a;

        // From the ArrowFunction proposal by @reallyuniquename.
        // https://github.com/HaxeFoundation/haxe-evolution/blob/master/proposals/0002-arrow-functions.md

        array.map(function(a) return a.toInt()).sort(function(a, b) return a - b);
//vs
        array.map(a -> a.toInt()).sort((a, b) -> a - b);

        // And now for something a bit harder...

        array.map( z -> {
            var f = new Vector<String>();

            f.push(z);
        });

        var f0_0 : Void->Int;
        f0_0 = (function() return 0);
        f0_0 = (() -> return 0);

    }
}

class SomeClass<T> {
    function new() {}
    function getSome() : T_renamed { return new T_renamed(); }
}
