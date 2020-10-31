package ;

abstract W (Int) from Int {
    @:to inline public function toString():String return '$this';
}

class TestArrowFunctionsEmbTests {

    var empty: Array<Int->Int> = [];
    var arr: Array<Int->Int> = [ (x:Int)->{x} ];
    var arr1: Array<Int->Int> = [ x->x ]; // x->x currently is evaluated as Unknown->Unknown
    var arr1b: Array<Int->Int> = [ function (x) x ];
    var arr2: Array<Int->Int> = [ a -> new W(1) ];
    var arr3: Array<Int->Int> = [ for (a in 0...10) a -> { if (a < 5) return 1; else return 0;} ];
    var arr3: Array<Int->Int> = [ for (a in 0...10) a -> return a < 5 ? 1 : 0 ];

    var should_warn1: Array<Int->Int> = [ (x:Int)->{'$x'} ];
    var should_warn2: Array<Int->Int> = [ "one", "two"];
    var should_warn3: Array<Int->Int> = [ a -> 1.0 ];

    public function new() {

        // Locals and class fields are not in the same type hierarchy.

        var empty: Array<Int->Int> = [];
        var arr: Array<Int->Int> = [ (x:Int)->{x} ];
        var arr1: Array<Int->Int> = [ x->x ]; // x->x currently is evaluated as Unknown->Unknown
        var arr1b: Array<Int->Int> = [ function (x) x ];
        var arr2: Array<Int->Int> = [ a -> new W(1) ];
        var arr3: Array<Int->Int> = [ for (a in 0...10) a -> { if (a < 5) return 1; else return 0;} ];
        var arr3: Array<Int->Int> = [ for (a in 0...10) a -> return a < 5 ? 1 : 0 ];

        var should_warn1: Array<Int->Int> = [ (x:Int)->{'$x'} ];
        var should_warn2: Array<Int->Int> = [ "one", "two"];
        var should_warn3: Array<Int->Int> = [ a -> 1.0 ];
    }
}
