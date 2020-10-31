package ;
class AbstractTypeErrors {
    var s : Null<String> = null;
    var myself : Null<AbstractTypeErrors> = null;
    var ms : Null<MyString> = null;

    public function new() {
        s = "Some string";
        myself = this;  // Should not show error.  Used to be: Incompatible type: AbstractTypeErrors should be Null<AbstractTypeErrors>
        s.length([]);
        s.charAt(0);
        myself.doThis();
        ms.doubleLength();
        ms.length();  // "length" Should be an unresolved identifier. (length is not exposed via MyString.)
        ms.charAt(0);
        "Some".charAt(0);
    }

    public function doThis() {}
    public function goThat() {}
}
/**
@:forward(charAt)
*/
@:forward(charAt, length)
abstract MyString(String) to String from String {
    public function doubleLength() { return this.length() * 2;}
}
