//package com.masque.samples.simple;
package masque;

import flash.display.Sprite;


// Example 1
import openfl.utils.Dictionary;
// This import shows in gray - i.e. it is "Unused" even thought it is used in the constructor - true of all openfl imports

class SimpleTest5 extends Sprite {
//    public static inline var someConstant:Int = 0;
    public function new() {
        super();

        // Example 2
        var a:IntWrapper<Int> = new IntWrapper<Int>(3);
        var i:Int = a.item; // Gives Error "Incompatible Type: T should be Int

        // Example 3
        var xml:Xml = Xml. parse("<somexml>test</somexml>");
        var childXml:Xml = xml.elementsNamed("somexml").next(); // Gives Error "Incompatible Type: T should be Xml

        // Example 3 (Note that Examples 2,3,4 maybe be example the same problem - I have many more of these examples if you want
        var f:Null<Float> = -20; // Incompatible Type: Int should be Null<Float>

        // Example 4
        var cars:Array<Car> = [new Car()];
        var w:Int = cars[0].wheels; // Gives Warning "Unresolved symbol"

        // Example 5
        var d:Dictionary<String, Int> = new Dictionary<String, Int>(); // This shows an "Unresolved type" - and also, I cannot "Ctrl+Cilck" to show me the openfl code for this class


    }

    public static inline var a = 3 + 4;
    public static inline var b = "str" + "str";
    public static inline var c = 2/1;
    public static inline var d = ( 4 + 2 );
    // Example 5
    public static inline var someConstant:Int = 4;
    public function someFunction(param:Int = someConstant):Void {
       // The "param:Int = someConstant" gave an Error "Parameter default type should be constant but was Int"
    }
}

class IntWrapper<T> {
    private var mItem:T;
    public var item(get, never):T;

    public function new(item:T) {
        mItem = item;
    }

    inline public function get_item():T {
        return mItem;
    }
}

class Car {
    public function  new() {}
    public var wheels:Int;
}