package ;

class IteratorMethodsNotFound {
    public function new() {
        var tree = new haxe.ds.BalancedTree<String, String>();
        var order = ["a"];
        var itr = tree.iterator();
        while (itr.hasNext()) {
            var e = itr.next();
            itr.remove();  // <<<-- Doesn't exist in std Iterator.
        }

    }
}

