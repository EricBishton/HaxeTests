package plugintestsrc;
class NestedTypedClassesAssignment {
    public function new() {
    }
}
class X<T> {
    public function new() {}
    public function create() : T {
        return new T();
    }
}


class Main {
    public function main() {
        var v:X<X<Int>>=new X<X<Int>>();
    }
}