// This is a negative test where no errors should be marked.
package plugintestsrc;

import StdTypes;
import Map;
import String;

class Test {
    function doTest() {
        var a : Map<String, String> = [ "ONE" => "one", "TWO" => "two" ];
        trace(a["ONE"].length);
    }
}
