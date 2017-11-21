package ;
class ChainedGenericsWithSubGenericsTest {
    public function new() {
    }
    static function main() {
        var a = new Top();
        a.foo( /*<caret>*/);
        var b = a.get();
        var c = b.get("foo");
        c.
    }
}

class Base<T:Map<Dynamic,Dynamic>> {
    public function foo(t:T) { t.get("foo"); }
    public function get() : T { return new T(); }
}

class Mid<T:Tail, U> extends Base<Map<String,U>> {
    public function bar(t:T) {}
    public function baz(u:U) {}
}

class Top extends Mid<Tail,Node> {
    public function new() {}
}

class Node {
    public function bifurcate() {}
}

class Tail {
    public function wag() {}
}
