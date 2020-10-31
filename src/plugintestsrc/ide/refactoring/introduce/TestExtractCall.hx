package plugintestsrc.ide.refactoring.introduce;
class TestExtractCall {
    function doSomething(k : String, v : String) {
        trace("I like " + k);
        trace("I mean " + Std.string(3.1416));
    }
    static function main() {
        var test = new TestExtractCall();
//        test.doSomething("Blueberry", <selection>Std.string(3.1416)</selection>);
        test.doSomething("Blueberry", Std.string(3.1416));
    }
}