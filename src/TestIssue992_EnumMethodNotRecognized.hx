package ;

enum Test {
    A;
    B;
}

class TestIssue992_EnumMethodNotRecognized {

    public function new() {
        var test = Test.A;
        trace(test.getName()); // getName Symbol is not resolved. Should lead to EnumValueTools.getName

        // getName is not getting resolved because test is resolving to a Test.A, which is a Test type.
        // When enumerating the children of Test to see if there is a child of the name getName, none
        // is found.  Somewhere along the line we need to test against the implicit _using_ of
        // EnumValueTools.
    }

    public static function main() {
        var a = new TestIssue992_EnumMethodNotRecognized();
    }
}
