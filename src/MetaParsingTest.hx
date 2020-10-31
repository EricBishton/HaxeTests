package ;


#if 1
@fileXml('tags="haxe,release"')   // Error mark was here.  Because final was not accepted for classes.
@:noDebug
#end
@:access(TestClass)
extern private final extern class MetaParsingTest {
    public function new() {
    }
}


class TestClass {}

#if !openfl_debug
@:fileXml('tags="haxe,release"')  // Error mark was here.  Because final was not accepted for classes.
@:noDebug
#end
@:access(openfl.display.Stage)
@:access(lime.ui.Window)
final class ExternalInterface
{
}


