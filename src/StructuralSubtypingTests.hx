package ;

typedef Pt = {x:Float, y:Float};
typedef Pt3d = {x:Float, y:Float, z:Float};

class Point {
  public var x: Float;
  public var y: Float;

  public function new(x:Float, y:Float) { this.x = x; this.y = y;}
}

class Point3d {
  public var x: Float;
  public var y: Float;
  public var z: Float;

  public function new(x:Float, y:Float, z:Float) { this.x = x; this.y = y; this.z = z; }
}

class Point3dExtended extends Point {
  public var z:Float;

  public function new(x:Float, y:Float, z:Float) {
    super(x,y);
    this.z = z;
  }
}

class StructuralSubtypingTests {
  static function main() {
    trace("Haxe is great!");
    new StructuralSubtypingTests().tryUnification();
  }

  public function new() {}

  public function tryUnification() {
    var p1:Pt = {x:1, y:2};
    var p2:Pt3d = {x: 4, y: 5, z:6};
    p1 = p2;    // No error.
    p2 = p1;        // Should show "Pt should be Pt3d" and "{ y : Float, x : Float } has no field z"
    trace (p2);

    var q1 = {x:1, y:2};
    var f1 = {x:1.0, y:2.0};
    var q2 = {x:4, y:5, z:6};
    var q3 : {var x:Int; var y:Int;} = {x:7, y:8};

    f1 = p1;
    f1 = p2;

    q2 = q1;    // Should show "{ y : Int, x : Int } should be { z : Int, y : Int, x : Int }" and "{ y : Int, x : Int } has no field z"
    f1 = q1;    // Should show "error: Int should be Float" and " have: { x: Int }, want: { x: Float }"
    q1 = q2;    // Should show "{ z : Int, y : Int, x : Int } should be { y : Int, x : Int }" and "{ z : Int, y : Int, x : Int } has extra field z"
    q1 = q3;
    trace(q2);

    var r1:{x:Float, y:Float};
    var r2:{x:Float, y:Float, z:Float};

    r1 = {x:1, y:2};
    r2 = {x:4, y:5, z:6};
    r1 = r2;    // No error.
    r2 = r1;                    // Should show "{ y : Float, x : Float } should be { z : Float, y : Float, x : Float }" and "{ y : Float, x : Float } has no field z"
    r2 = p2;    // No error.
    r1 = p2;    // No error.
    trace (r2);

    var s1:Point = {x:1, y:2};  // Should show "{ y : Int, x : Int } should be Point"
    var s2:Point3d;
    var s3:Point3dExtended;

    s1 = {x:1, y:2};            // Should show "{ y : Int, x : Int } should be Point"
    s2 = {x:4, y:5, z:6};       // Should show "{ z : Int, y : Int, x : Int } should be Point3d"
    s3 = {x:4, y:5, z:6};       // Should show "{ z : Int, y : Int, x : Int } should be Point3dExtended"
    s1 = r1;                    // Should show "{ y : Float, x : Float } should be Point"
    s2 = r2;                    // Should show "{ z : Float, y : Float, x : Float } should be Point3d"
    s3 = r2;                    // Should show "{ z : Float, y : Float, x : Float } should be Point3dExtended"
    s1 = s2;                    // Should show "Point3d should be Point"
    s1 = s3;    // No Error.
    s3 = s2;                    // Should show "Point3d should be Point3dExtended"
    s2 = s3;                    // Should show "Point3dExtended should be Point3d"
    r1 = s1;    // No Error.
    r2 = s2;    // No Error.
    r2 = s3;    // No Error.
    trace(s2);

    s1 = p1;                    // Should show "Pt should be Point"
    s2 = p2;                    // Should show "Pt3d should be Point3d"
    s1 = p2;                    // Should show "Pt3d should be Point"
    p1 = s1;    // No Error.
    p2 = s2;    // No Error.
    p1 = s2;    // No Error.
  }
}
