package ;
class TestIssue521 {

    var fn1: Void -> Void = function(): Void {}; // Incompatible type error for Void argument functions

    var fn2: Void -> Int = function() return 5;

    public static function main(): Void { // "public" unexpected after var with short function
    }
}
