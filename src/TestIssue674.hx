package ;

import haxe.ds.ObjectMap;
import haxe.Int32;
import haxe.Int64;

class TestIssue674 {
    public function new() {
        var variable1:haxe.ds.ObjectMap<haxe.Int32, haxe.Int64>;
        var variable2 = new haxe.remoting.Proxy<haxe.Int32>();
    }
}

//class SiteProxy extends haxe.remoting.Proxy<haxe.Int32> {
//}