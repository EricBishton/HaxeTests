// File should not have any errors.
package ;
class IncompatibleTypeErrorOnMap {
    private var myMap : Map<String, String>;
    private var myEmbeddedMap : Map<String, Map<String, String>>;
    private var myEmbeddedMap2 : Map<Int, Map<String, String>>;
    private var myMap2 : Map<String, String> = [];

    public function new() {
        myMap = [ "something" => "somevalue",
            "else" => "elsevalue"
        ];
    }
    public function test() {
        var val : String = myMap.get("something");  // Original issue was: Null<Unknown> should be String.

        //var val2 : String = myEmbeddedMap.get("else").get("something").;

        var val3 : String = myEmbeddedMap2.get(2).get("something").  // No completion here!  Should show String methods.
    }
}
