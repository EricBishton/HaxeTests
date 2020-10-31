package ;
class TestIssue78 {
    static function main() {
        var a:A = new Test();
    }

    public function new() {}

    public function a() {}
}

abstract A({ function a():Void; }) from { function a():Void; } {

}
