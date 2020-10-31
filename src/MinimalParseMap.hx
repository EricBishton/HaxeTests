package ;

class MinimalParseMap {
    public function doSomething() {
        var vec = new Map<String,Int> ();
        vec.set("this", 1);
        vec.set("that", 2);

        trace(vec[0].length); // Should give error: No @:arrayAccess function accepts argument of Int

        trace(vec["that"]);   // Just fine.

        trace(vec["that"].length); // Should give error: Null (Int) has no field length.

        for (vecelem in vec.keys()) {
            trace(vecelem.length);
            trace(vecelem.charAt(0));
        }
    }
}