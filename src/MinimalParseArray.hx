package ;

import tests.TestPtr.IntHolder;
import openfl.Vector;

class MinimalParseArray {
    public function doSomething() {
        var vec = new Array<String> ();

        trace(vec[0].length);

        for (vecelem in vec) {
            trace(vecelem.length);
            trace(vecelem.charAt(0));
        }
    }
}