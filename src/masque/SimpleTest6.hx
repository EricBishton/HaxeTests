package masque;
// package com.masque.samples.simple;

import motion.actuators.GenericActuator;
import motion.Actuate;
import flash.display.Sprite;
import flash.ui.Mouse;
import flash.ui.MouseCursor;
import openfl.display.DisplayObject;

class SimpleTest6 extends Sprite {
//    public static inline var someConstant:Int = 0;
    private var bar:Int;
    private var mASTween:GenericActuator<DisplayObject>;

    public function new() {
        super();

        // This is our number one warning concern - we use this function all over our code
        // Issue 1
        var obj:Sprite = null;
        obj = SimpleTest6.dispose(obj); // Incompatible type: Any should be Sprite
        obj = dispose(obj); // Strangely - this does NOT show a warning

        // Issue 2
        var f:Null<Float> = 20; // Incompatible Type: Int should be Null<Float>

        // Issue 3
        var dObj:DisplayObject = type(obj, DisplayObject); // Incompatible Type (T should be DisplayObject)

        // Issue 4
        Mouse.cursor = MouseCursor.AUTO; // Incompatible type: String should be Dynamic<Dynamic>

        // Issue 5
        mASTween = Actuate.tween(dObj, 0.25, { x: 400 }).onComplete(finished); // Incompatible type: GenericActuator<T> should be GenericActuator<DisplayObject>
    }

    private function finished():Void {}

    public static function type<T>(o:Any, t:Class<T>):T {
        return (Std.is(o, t) ? o : null);
    }

    public static function dispose(item:Any):Any {
        // Some Stuff happens here
        return null;
    }

}