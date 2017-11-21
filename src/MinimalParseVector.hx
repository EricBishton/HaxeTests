package ;

import openfl.Vector;

class MinimalParseVector {
    public function doSomething() {
        var vec = new Vector<String> ();

        trace(vec[0].length);

        for (vecelem in vec) {
            trace(vecelem.length);
            trace(vecelem.charAt(0));
        }
    }
}