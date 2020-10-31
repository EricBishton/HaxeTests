package ;

class MinimalParseMap2 {
    public function doSomething() {
        var vec = new Map<String,String> ();
        vec.set("this", Std.string(1));
        vec.set("that", Std.string(2));
        vec.set(0, Std.string(3)); // Should give error: Argument zero invalid type.

        trace(vec[0].length); // Should give error: No @:arrayAccess function accepts argument of Int

        trace(vec["that"]);   // Just fine.

        trace(vec["that"].length); // Should be fine.
        trace(vec.get("that").length); // Should be fine.

        for (vecelem in vec.keys()) {
            trace(vecelem.length);
            trace(vecelem.charAt(0));
        }
    }

    public function Test() {
        var a : Map<String, String> = ["ONE" => "one", "TWO" => "two" ];
        trace (a["ONE"].length);
    }

    public function Test2() {
        var a = ["ONE" => "one", "TWO" => "two" ];
        trace(a["ONE"].length);
    }

    public function Test3() {
        var a = [1 => "one", "TWO" => 2, 3.0 => function() {return "this"}];
        trace(a[1].length);
    }
}
