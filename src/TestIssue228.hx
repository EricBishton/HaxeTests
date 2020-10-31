package ;


class TestIssue228 {
    public function new() {
        // Issue #228  NPE on date when extracting.
        date1.getDate();  // Select this and extract/introduce variable.
    }
}
