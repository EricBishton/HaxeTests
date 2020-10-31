// Class `C2` from TestSpecification.hx, from the Haxe unit tests.
package ;
class InferTypeOfAccessorParameter {
//    public var v:String;
//    public var prop(default, null):String;
    @:isVar public var propAcc(get, set):String;

    public function new() {
//        v = "var";
//        prop = "prop";
        propAcc = "0";
    }

    public function get_propAcc() {
        return "1";
    }

    // The compiler infers 'v' as {+ toUpperCase: Void->String}.  That is, an "open" structure, having a field named
    // toUpperCase, that takes no arguments and returns a String.  Any type that unifies with it (e.g. has a
    // toUpperCase field with the same type signature) can be passed in and used.
    public function set_propAcc(v) {
        $type(v); // Here, the type is Unknown<0>
        return this.propAcc = v.toUpperCase();
        $type(v); // Here, the type is {+ toUpperCase: Void->String}
    }
}