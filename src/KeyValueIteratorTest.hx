package ;

import StringTools;

class KeyValueIteratorTest {
    public function new() {
        var map:Map<String, String> = ["a"=>"B"];
        for (k=>v in map) {
            trace("K is", k);
            trace("V is", v);
        }
    }
}
