// https://try.haxe.org/#BAd03

package ;
class TestIssues973_FunctionTypeWithParameters {
}
class Test {
    static function main()
    {
        var value:String = "asd";

        var c:Clazz = new Clazz();
        var str:String = c.getSome(value);
        var str:Int = c.getSome(1);
        var str:String = c.getSome(1); // Should have error: Incompatible type

        var fun:String->Int = c.getSome(function(myVal:String) { return 1;});
        var fun:String->Int = c.getSome(function(myVal) { return 1;});
        var fun:String->Int = c.getSome(function(myVal:Float) { return 1;});  // Should have error: Incompatible type

        trace(str);
    }
}

class Clazz
{
    public function new()
    {

    }

    public function getSome<T>(value:T):T
    {
        return value;
    }
}

import haxe.Constraints.Function;

class Test2 {
    static function main() {
        new Test();
    }

    public function new()
    {
        var f:Function = coolFunc;
    }

    private function coolFunc():Void
    {

    }
}