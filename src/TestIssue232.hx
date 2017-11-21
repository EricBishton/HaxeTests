package ;


class Point {
    public var x:Int;
    public var y:Int;
    public function new(xval:Int, yval:Int) {
        x = xval;
        y = yval;
    }
}

class TestIssue232 {
    static public function main() {
        var issue = new TestIssue232();
        issue.testIssue232();
    }

    public function new() {
    }

    public function testIssue232() {
        var pieces = [for (i in 0...10) new Point(i, i)];
        var childrenPositions = [for (piece in pieces) new Point(piece.x, piece.y)];
        var a = [for (i in 0...10) i];
    }
}
