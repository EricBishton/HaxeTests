package ;
class TestIssue282 {
    static function main() {
        var foo = {} //OK
        var baz = 1;
    }
    var foo = {} //bug
    var baz = 1;
    static var foo2 = {x: 1} //bug - similar previous
    var baz2 = 1;

    static function main2() {
        var foo = { 1; } // <-- Error was before '1', "'}' expected, got '1'"
    }
    var foo3 = { 1; } // <-- Error was before '1', "'}' expected, got '1'"
}
