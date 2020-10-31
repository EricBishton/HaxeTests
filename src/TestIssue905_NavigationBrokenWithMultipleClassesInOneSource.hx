package ;

import haxe.ds.BalancedTree;

class TestIssue905_NavigationBrokenWithMultipleClassesInOneSource extends TreeNode<String, String> {
    public function new() {
        super("M", "m");
        trace(super.get_height());
    }
}