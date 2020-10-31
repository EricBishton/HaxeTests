package ;
class TestIssue957_ArrayAccess_T_ {
    public function new() {
    }
}

extern class Vector<T> implements ArrayAccess<String> {
}

class Main {
    static public function main() {
        var vec = new Vector<String>();
        vec[0]. // <-- this should give completion for String
    }
}
