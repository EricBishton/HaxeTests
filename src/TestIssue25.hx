package ;
class TestIssue25 {
    public function new() {
    }
    public static function main() {
        var map : Map<String,String> = ["key" => "value"];
        for (key in map.keys()) {
            var index = key.indexOf("e"); // unresolved symbol warning
        }
    }
}
