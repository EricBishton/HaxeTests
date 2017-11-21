package ;
class RenamingTest_FlashDevelopIssue467 {
    public function new() {
    }
}

// Change w to v. 'v = w' should become 'this.v = v'

class Test
{
    var v:Int;

    public function new(w:Int)
    {
        v = w;
    }
}

// Similar  changing the name of the arg to 'v' should make
// 'v' become Test2Enum.v.
class Test2
{
    public function new(w:Int)
    {
        var e:Test2Enum = v;
    }
}

enum Test2Enum
{
    v;
}