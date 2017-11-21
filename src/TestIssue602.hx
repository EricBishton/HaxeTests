package ;
class TestIssue602 {
    public function new() {
    }
    public static function main() {
        var arr:Array<SomeType> = new Array<SomeType>();
        var x = arr[i]
        x.someMethod(); //<- unresolved symbol
    }
}

class SomeType {
    public function someMethod() {}
}
