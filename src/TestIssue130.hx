package ;
class TestIssue130 {
    public function new() {
        var x = 0;
        trace({x;}); // parser attempts to parse it as object literal and fails.
    }
}
