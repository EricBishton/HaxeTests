package plugintestsrc.annotation;
// This is a negative test where no errors should be marked.

import StdTypes;
import Map;
import String;

class Test {
    function doTest() {
        var a = new Map<String, String>();
        a["ONE"] = "one";
        a.set("TWO", "two");

        trace(a["ONE"].length);
    }
}