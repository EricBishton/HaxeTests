package ;

import haxe.ds.Vector;
enum AnEnum {
    FIRST;
    SECOND;
}

class ConstantTests<T:String> {
    public function new() {
    }

    public static inline var someConstant:Int = 4;
    public function someFunction(param:Int = someConstant):Void {
        // The "param:Int = someConstant" gave an Error "Parameter default type should be constant but was Int"
    }

    public static inline var f:Null<Float> = -20;
    public function fFunction(i:Float = f) {}

    public static inline var s = "123" + Std.string(123);
    public function otherFunction(param:String =  s) {
        // The "param:String = s" gave an Error "Parameter default type should be constant but was String"
    }

    static inline var myConstant = "0123" + (Std.string("456") + "789");
    public function someFunction2(param:String = myConstant):Void {
        // The "param:String = myConstant" gave an Error "Parameter default type should be constant but was String"
    }

    static inline var baseVar = -1;
    static inline var chasingVar = baseVar;
    static function chase(param:Int = chasingVar) {}

    static inline var enumVar = AnEnum.FIRST;
    static inline var enumVar2 = enumVar;
    static function useEnum(param:AnEnum = AnEnum.SECOND) {}
    static function useEnum2(param:AnEnum = enumVar) {}
    static function useEnum3(param:AnEnum = enumVar2) {}
}
class Test {
    static inline var fn:String->Void = (s)->return;
    public function setCallback(callback:String->Void = fn) {}
}

class ErrorOnOptionalParameterWithNonConstMethodTest {
    static inline var myConstant:Float = Std.int("12345".substr(2)) * 1; // Not really a constant.
//    static function doSomething(v:Float = myConstant) {}  // Should be marked as an error.
}
