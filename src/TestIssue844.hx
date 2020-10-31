//
// To replicate: Try to extract true for any of the variables in the code below
//

package ;

class TestIssue844 {

    public static function tryme() {
        return 1.0;
    }

    public function somethingelse() {
        var real = 2.0;
        var real2 = 1.0;

        var withExpr = 1.0 + 2.0 + Std.int("3.0");

        var problem = tryme() + infiniteLoopProblem();
        var callValue = problem;

        var str = "Some string.";

        var getThis = () -> {return this;}
        var another = () -> return this;

        var anonymous = function(ab:Int) {return this;};
        var named = function named(ab:Int) {return this;} ;

        var c = if (b == "Some string") {};   // HaxePrefixExpression (!?!)
        var a:Int = ({x:10, z:11}: {var x:Int; var y:Int;});     // HaxeTypeCheckExpression (10:Float)

    }

    public function new() {
        var first = true;
        var second = true;
        var third = true;
    }
    public function infiniteLoopProblem() {
        var fourth = true;
    }
}