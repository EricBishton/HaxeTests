package ;
import haxe.ds.Vector;

class Thing{
    public function new(){}
    public var word:String;
}
class TestIssue464 {
    public static function main(){
        new TestIssue464();
    }
    var vec(default, null):Vector<Thing>;
    public function new(){
        vec = new Vector(1);
        vec.set(0, new Thing());
        var m = this.vec[0];
        m.word = "Hi there!";
        trace(m.word);
    }
}