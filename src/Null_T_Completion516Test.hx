package ;
class Null_T_Completion516Test {
    public function new() {
    }

    public function foo(): Null<String> return "";

    public function test() {
        foo(). // <- no suggestions
    }
}