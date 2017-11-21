package ;

import openfl.Vector;

class MinimalParseMap {
    public function doSomething() {
        var vec = new Map<String,Int> ();

        trace(vec[0].length);

        for (vecelem in vec.keys()) {
            trace(vecelem.length);
            trace(vecelem.charAt(0));
        }
    }
}