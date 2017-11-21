package ;
class TestIssue601 {
    public function new() {
    }
    public static function main() {
        var arr:Array<SomeType> = new Array<SomeType>();
        arr.filter(); //<- unresolved symbol
    }
}

class Extensions
{
    static function filter<T>(source:Iterable<T>)
    {
        //some logic
    }
}

class SomeType {
    public function new() {}
}
