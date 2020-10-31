package plugintestsrc;
class IntroduceVariable {
    public function new() {

        var k = {x:1, y:1};
        var m = var n = 1;

        for (i in ["1" => 1, "2" => 2].keys()) Sys.println(i);
        for (i in [0,1,2,3]) Sys.println(i);
        var myArr = [for (j in 0...10) return j;];

        if (~/string/i.match("MyString")) trace("yes"); // Select from inside the regex to test embedded REGEX_FILE.

        // Issue #228  NPE on date when extracting.
        date1.getDate();  // Select this and extract/introduce variable.
    }
}
