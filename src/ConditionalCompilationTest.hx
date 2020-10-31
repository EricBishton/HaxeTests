package ;

using StringTools;

class ConditionalCompilationTest {
    public function new() {
        #if true
        #elseif ~  // Should parse as '#else if ~'   ??
        #end
    }

#if (!false)
    public function something() {}
#end

#if  /*comment*/ #end

#if !("str" >= "str" &&
    cpp
    ||
    js
    )

    public #if (1) static #else static #end function tryMe() { }

#elseif 1
    public function whatGives() {}

#else

    static @:final function whatGives() {}
#end

    public static function testStringTools() {
        var s = "This is a string.";
        var escaped = StringTools.urlEncode(s);
    }

    public static function traceout() {
        #if (haxe_ver >= '3.5')
            trace("Haxe is great.");
        #elseif (haxe_ver <  "3.5")
            trace("Older Haxe is not so great.");
        #end
    }
    
}
