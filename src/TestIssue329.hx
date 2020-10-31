package ;
class TestIssue329 {
    public function new() {
    }

    public function test2(size:Int)
        return var a : Array<Int> = [for (i in 0...size) i];

    public function test3(size:Int)
        return [for (i in 0...size) i];
}
