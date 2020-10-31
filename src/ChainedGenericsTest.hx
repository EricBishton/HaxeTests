package ;
class ChainedGenericsTest {
    public function new() {}

    static function main() {
        var top : Top = new Top();
        var myNode = new Node();
        top.foo(/*<caret>*/);
    }

    static function createTop() : Top {  // Renaming Top here will pick up Top from all other files in the same package.  Need to verify correct behavior and limit occurrences to those referenced.
        return new Top();
    }

    static function createMid() : Mid {
        return new Mid<Tail,Node>();
    }
}

class Base<T> {
    public function new() {}
    public function foo(t:T) {}
}

class Mid<T:Tail, U> extends Base<U> {
    var someVar : Array<T> = new Array<T>();

    public function new() {}
    public function bar(t:T) {}
    public function baz(u:U) {}
    override public function foo(u:U) {} // <<---- u should be T.  Wrong!!
}

class Top extends Mid<Tail,Node> {
    public function new(t:Tail, n:Node) {}
}

class Node {
    public function new() {}
}

class Tail {
    public function new() {}
}

