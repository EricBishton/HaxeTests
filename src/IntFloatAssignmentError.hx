package;

typedef Pt = {x:Float, y:Float};
typedef Pt3d = {x:Float, y:Float, z:Float};

class Point {
    public var x: Float;
    public var y: Float;

    public function new(x:Float, y:Float) { tthis.x = x; this.y = y;}
}

class Base {
    public function new() {}
    static public function doSomething() {}
    public function somethingElse() {}
}

class IntFloatAssignmentError extends Base {
    var somevar;    // Should show an error: 'type required for member variable somevar'
    var typedvar : Int;
    var floatvar : Float;
    var inferredvar = 10;
    var thisvar = 56; // Inferred types based upon immediate values are OK.

    // Static variables have different rules.  They are typed as of first use (following function calls, but without
    // regard to conditions).  Also, ignoring shadowed uses.
    static var staticvar;
    public function argh(){var a; }
    public function new() {
        somevar = 3.11;
        typedvar = 33.33;        // Should be showing error.
        floatvar = 10;      // No error.
        inferredvar = 22.2;     // Should be showing error.

        var zz;             // Declaration
        $type(zz);          // Unknown
        zz = "Test";        // Assign type;
        $type(test);        // String
        zz = 13;                // Should show error.
        zz = new String();  //OK.

        var a:Int = 10 / 2;   // Use Convert to Int

        var b:Int = (10:Float);  // OK! NO error should be shown. 10 is an integer that is assignable to a Float.
        var j:Int = (10.0:Float);   // Should be showing an error.
        j = (10.0:Float);           // Should be showing an error.

        var f:Float = "3.1416"; // Should be showing an error.
        var s:String = 3.1416;  // Should be showing an error.
        var t:String = 777;     // Should be showing an error.

        var g:Float = 100;
        var c:Int = (g);    // Should be showing an error. Parens mask the type, somehow.

        c = 10 / 2;         // Should be showing an error.
        c = "SomeString";   // Should be showing an error.
        c = 1;              // No error.
        c = 1.0;            // Should be showing an error.

        c = { x:1, y:2};     // Should be showing an error. Isn't because the anonymous type is being typed as "Dynamic".
        c = new Pt();       // Should be showing an error.
        c = new Point(1,2); // Should be showing an error.
        
        thisvar = 3.141;     // Should be showing an error.
        
        $type(staticvar); // Unknown
        setstaticvar();
        $type(staticvar); // Float 
    }

    static public function doSomething() {
        trace(somevar);         // Should be showing an error on somevar: Cannot access fields from static context.
        trace(this.somevar);    // Should be showing an error on this: Cannot access 'this' from static context.
        super.doSomething();    // Should be showing an error on super: Cannot access 'super' from inside a static function.
        super.somethingElse();  // Should be showing an error on super: Cannot access 'super' from inside a static function.
    }
    
    function setstaticvar() {
        staticvar = 3.1416;
    }
}



