package ;
class TestIssue93 {
    static var s:String={
        var b ="Teste";
        var a ="1";
        b+a;
    };
    static function main() {
        trace(s);
    }
}
