package ;
class ChainedGenericsWithSubGenericsTest {
    public function new() {
    }
    static function main() {
        var map = new Map<String,Dynamic>();
        var a = new Top();
        a.foo(map /*<caret>*/);    // Should suggest map, because it's type assignable to Dynamic.
        var b = a.get();        // $type(b) is Map<String,U>
        var c = b.get("foo");   // Map.get() returns Mid-U:Node
        c. /*<caret>*/          // should suggest bifurcate.
    }
}

class Base<T:Map<Dynamic,Dynamic>> {
    public function foo(t:T) { t.get("foo"); }
    public function get() : T { return new T(); }
}

class Mid<T:Tail, U> extends Base<Map<String,U>> {  // If Base-T is Int, then we should show a constraint error here.
    public function bar(t:T) {}
    public function baz(u:U) {}
}

class Top extends Mid<Tail,Node> {
    public function new() { super.bar(); }
}

class Node {
    public function bifurcate() {}
}

class Tail {
    public function wag() {}
}
