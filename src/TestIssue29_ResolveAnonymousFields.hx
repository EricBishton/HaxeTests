package ;
class TestIssue29_ResolveAnonymousFields {
    function demo2() {
        var a = {v:1};
        var b = 1;

        var c = a.v; // <- unresolved

        var d = (a = (a.v + b)).v; // <- unresolved -- And should remain so!!       // characters 17-30 : Int should be { v : Int }
        var e = (a.v = (a.v + b)).v; // <- unresolved -- And should remain so!!     // characters 16-35 : Int has no field v
        var f = a;
        f.v = (a.v = (a.v + b));  // <- unresolved -- and should be -- both at f and internally.
    }
    public function new() {
    }
}
