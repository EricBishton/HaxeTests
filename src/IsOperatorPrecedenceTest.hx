package ;
class IsOperatorPrecendenceTest {
    public function new() {
    }

    public static function main() {
        var b;
        var s : String = "TestMessage";
        
        b = s is String;
        trace(b);
    }
}
