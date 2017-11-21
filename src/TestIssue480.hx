package ;
class TestIssue480 {
    public function new() {
    }
    static public function main() {
        var keyToArray = new Map<String, Array<Dynamic>>();
        keyToArray.get("string"). //<- don't drop completion popup
    }
}
