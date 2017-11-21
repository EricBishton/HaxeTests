package ;
class TestIssue366 {
    public function new() {
    }
}
class A extends B<Z> {
    var a:Z;
    function new()
    {
        a.z;
        b.z;
        c.
    }
}

class B<T> extends C<T> {
    var b:T;
}

class C<T> {
    var c:T;
}

class Z {
    public var z:Int;
}