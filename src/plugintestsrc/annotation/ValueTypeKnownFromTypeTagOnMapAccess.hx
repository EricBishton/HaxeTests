package plugintestsrc.annotation;
// This is a negative test where no errors should be marked.

import haxe.ds.StringMap;
import haxe.ds.IntMap;
import StdTypes;
import Map;
import String;

class Test {
    function doTest() {
        var a:Map<String, String> = [ "ONE" => "one", "TWO" => "two" ];
        trace(a["ONE"].length);
    }
}