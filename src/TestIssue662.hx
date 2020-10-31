package ;
class TestIssue662 {
    static function main() {
        var update = "blah";
        var u:Dynamic = {"$set":{"events.$":update}}; // <<-- Reported error at "$set", 0.11.2 error at first ':'
    }
    public function doSomething() {}
}
