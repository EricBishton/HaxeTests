package ;
class TestIssue516_Null_T_Completion {
    public function TestIssue516_Null_T_Completion() {
    }

    public function foo(): Null<String> return "";

    public function test() {
        foo(). // <- no suggestions
    }
}