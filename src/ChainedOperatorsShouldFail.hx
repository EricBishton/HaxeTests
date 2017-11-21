package ;
class ChainedOperatorsShouldFail {
    public function new() {
        var a=0, b=0, c=0;

        if (a | b && || c ) trace("Yes");

    }
}
