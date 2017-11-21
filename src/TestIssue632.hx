package ;
class TestIssue632 {
    public function new() {
    }
}
class TestClass {
    public static function main() {
        var node = new Node<String>(false, "");
        node.| // <- cmd/ctrl+space
    }
}

class Node<T> {
    public var required(default, null):Bool;
    public var value(default, null):T;
    public function new(required:Bool, ?value:T) {
        this.value = value;
    }
}