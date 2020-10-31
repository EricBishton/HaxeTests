// The purpose of this test is to give import.hx something to do.

package com.bss;

enum HelperType {
    A;
    B;
}

class TestHelper {
    public function new() {
    }

    static public function print(message:String) :Void {
        trace(message);
    }

    public function show(message:String) : Void {
        trace("Showing something.");
    }

    public function giveHelp(type : Enum<HelperType>) {
        trace("This is some ${type.getName()} help.");
    }

    public function sortAry(array : Array<Dynamic>) {
        // ArrayHelper should be picked up by import.hx in our parent directory.
        array.sort();
    }

    final stack = new GenericStack<Dynamic>();
    public function save(thing : Dynamic) : Void {
        stack.add(thing);
    }
    public function restore() : Null<Dynamic> {
        if (!stack.isEmpty()) return stack.pop();
        return null;
    }
}
