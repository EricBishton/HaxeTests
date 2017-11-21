package ;

import flixel.group.FlxGroup;
import flixel.FlxSprite;

class TestIssue24 {
    public function new() {
    }
    public static function main() {
        var b:FlxSprite;
        var a:FlxGroup;
        a.| //no completion at all
    }
}

class B
{
}

class D extends B
{
}

class A<T:B>
{
    public function test2(obj:T)
    {

    }

    function a() {
        test2();//get resolved as test2(obj:B)
    }
}

class C extends A<D>
{
    function b() {
        test2(); //doesn't get resolved
    }
}