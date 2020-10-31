// Original source for this test is found in the polygonal library.
package plugintestsrc;

class TreeNode<T> {
    public var val:T;
    public var next:TreeNode<T>;
    public var prev:TreeNode<T>;
    public var children:TreeNode<T>;

    public function new(val:T) {
        this.val = val;
    }

    /**
          Calls 'f` on all elements in preorder.
    **/
    public function iter(f:T->Void, ?tmpStack:Array<TreeNode<T>>):TreeNode<T>
    {
        var stack = tmpStack;
        if (stack == null) stack = [];
        stack[0] = this;
        var top = 1;
        while (top > 0)
        {
            var n = stack[--top];
            var c = n.children;
            while (c != null)
            {
                stack[top++] = c;
                c = c.next;
            }
            f(n.val);
        }
        return this;
    }

    public function getLastChild():TreeNode<T> {
        return new TreeNode<T>();
    }
}

class Test {
    public static function main() {
        var tree = new TreeNode<Int>(1);

        tree.iter((val)->{trace(val);}, [ tree ]);
    }
}

// From NOErrorAccessingThroughParameterizedChains.
class TestSort {
    static function testSort() {
        var root = new TreeNode<Int>(100);
        var node = root.getLastChild();
        while (node != null) {
            node = node.prev;           // <---- Issue was "Incompatible type TreeNode<T> should be TreeNode<Int>"
        }
    }
}