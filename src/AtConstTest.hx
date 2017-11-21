package ;
class AtConstTest {
    public function main() {
        new Test<String>();  // try.haxe.org says: Type parameter is expected to be a constant value.
    }
}

class Test<@:const T> {
    function new() {
    }
    static function main() {
        var t =  new Test<'string.ml'>();   // should parse correctly.
        var t2 = new Test<124>();           // should parse correctly.
        $type(t);
        $type(t2);
        t = t2;
        trace("Haxe is great!");
    }
    static function fun() { }
}
