package plugintestsrc.annotation;

import haxe.ds.StringMap;
import StdTypes;
import Map;
import String;

class Test {
    function Test() {
        var a = ["ONE" => "one", "TWO" => "two"];
        trace(a["ONE"].length);

        var b : StringMap<String> =  a;
    }
}