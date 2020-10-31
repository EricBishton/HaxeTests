package ;
import Map;
class TestIssue586 {

    var notAnError : Map<Int, String> = [ 3 => "they", 4 => "them"];
    var intentionalError : Map<Int, String> = ["me" => 2, "you" => 1];

    public function tests() {
        // These should both parse as mapLiterals.
//        var map1 = [0 => "zero", 1 => "one"];
        var map2:Map<Int, String> = [ 0 => "zero", 1 => "one"];
        var intentionalTypeError:Map<Int, String> = ["one" => 1, "two"=>2];

        var n = 0;
        var ary = ["one", "two", "three"];
        var map4 = [
            while (n < ary.length)
                n => ary[n++]
        ];
    }

//    public function new() {
//        var map1 = [0 => "zero", 1 => "one"];
//        var a = map1[0];
//        var b:Int = 0;
//
//        switch a
//        {
//            // This should parse as a fatArrowExpression.
//            case b => _: trace(b);
//        }
//    }
//
//    public function testArrayComprehension(size:Int)
//        return [for (i in 0...size) i];

#if 1
    public function MapLiteralComprehensionFor() {
        var ary = ["one", "two", "three"];
        var map3 = [
            for (n in 0...ary.length)
                n => ary[n]
        ];
    }

    public function MapLiteralComprehensionWhile() {
        var words = ["one", "two", "three"];
        var i = 0;
        var map = [
            while (i < words.length)
                i => words[i++]
        ];
    }

    public function MapLiteralComprehensionForFor() {
        var words = ["one", "two", "three"];
        var map = [
            for (n in 0...words.length)
                for (m in 0...words.length)
                    n + m => words[n] + words[m]
        ];
    }

    public function MapLiteralComprehensionWhileWhile() {
        var words = ["one", "two", "three"];
        var i = 0;
        var j = 0;
        var map = [
            while (i < words.length)
                while (j < words.length * i)
                    i + j => i++ * j++
        ];
    }

    public function MapLiteralComprehensionForWhile() {
        var words = ["one", "two", "three"];
        var i = 0;
        var map = [
            for (j in 0...words.length)
                while (i < words.length)
                    i + j => words[i%j]
        ];
    }

    public function MapLiteralComprehensionWhileFor() {
        var words = ["one", "two", "three"];
        var i = 0;
        var map = [
          while (i < words.length)
            for (j in 0...words.length)
                i + j => words[i%j]
        ];
    }
#end
}
