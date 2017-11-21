package ;
using StringTools;

class TestIssue29 {
    public function new() {
    }
}

class Demo{
    function demo(){
        var lines = "--+--+--".split("+");
        for(i in 0...lines.length)
            if((lines[i] = lines[i].rtrim()).length > 0) {  // <-- remains unresolved
                trace(lines[i]);
                lines[i].rtrim();
                StringTools.rtrim(lines[i]);  // <--rtrim is unresolved  -- Fixed!!
            }
    }
    function demo2() {
        var a = {v:1};
        var b = 1;

        var c = a.v; // <- unresolved

        var d = (a = (a.v + b)).v; // <- unresolved -- And should remain so!!
        var e = (a.v = (a.v + b)).v; // <- unresolved -- And should remain so!!
        var f = a;
        f.v = (a.v = (a.v + b));  // <- unresolved -- and should be -- both at f and internally.
    }
    function demo3() {   // From mayakwd
        var a:{v:Int} = {v:1};
        var c = a.v; // <- unresolved
    }
    function demo4() {  // From Srikanth
        (new haxe.Timer(1000)).run();  // <- unresolved

        var m:Array<Int> = new Array<Int>(0);
        (m[i]).length; // m is Array  // <- unresolved
    }
}