package ;
import TestSearchOverrides;

class OverrideTop {
    public static function play() {
        var t = new Top();
        t.play(); //<caret> in play.
    }
}
