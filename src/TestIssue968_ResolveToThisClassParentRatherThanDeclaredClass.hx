package ;
class TestIssue968_ResolveToThisClassParentRatherThanDeclaredClass extends Base{
    public function new() {
        var a : Array<String> = [];

        a.add("new String");  // add Resolves to Base.add when it should be unresolved.  There is no add() in Array.
    }
}

class Base {
    public function new() {}
    public function add(a:String) {}
}
