package plugintestsrc;
class ExternClass2 {
    public function new() {
    }
}

private extern class Foo {
}

extern class ExternClass2 {
var foo:Foo; // Caret in Foo.  Should be able to goto
}