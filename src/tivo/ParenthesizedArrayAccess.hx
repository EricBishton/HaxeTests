// Verified on http://try-haxe.mrcdk.com/#453Db
package tivo;
class ParenthesizedArrayAccess {
    static function main() {
        trace("Haxe is great!");
        trace(new ParenthesizedArrayAccess().arrayAccess());
    }
    public function new() {
    }
    public function arrayAccess() {
        var testee = new MyClass();
        trace((testee.listItems)[0]);  // <--- Error is on []
    }
}

class MyClass {
    public var listItems : Array<Int> = [ 1, 2, 3, 4, 5 ];
    public function new() {}
}
