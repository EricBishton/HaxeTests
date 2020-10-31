package ;
using Std;

class TestIssue964_StaticExtensionsUnresolved {
    var m:Map<String,String> = new Map();
    public function new() {
        m.get("someString").parseInt();   // <<---- parseInt() marked as unresolved.
        m.is(String);
    }
}
