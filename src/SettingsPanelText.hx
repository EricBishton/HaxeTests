package ;
class SettingsPanelText {
    public function new() {
    }
}
/*** From HaxeColorSettingsPage.java:getDemoText()
     Below this line is the text from the Settings->Editor->Color Scheme->Haxe dialog box. ***/
#if definedFlag && undefinedFlag
#error "Error!!"
#else
import util.Date;
#end

/* Block comment */
/**
 Document comment
**/
class SomeClass implements IOther { // some comment
    private var field = null;
    private var unusedField:Number = 12345.67890;
    private var anotherString:String = "Another\nStrin\g";
    public static var staticField:Int = 0;

    public static function inc() {
        staticField++;
    }
    public function foo(param:AnInterface) {
        trace(anotherString + param);
        var reassignedValue:Int = SomeClass.staticField;
        reassignedValue ++;
        function localFunction() {
            var a:Int = \? $$$;// bad character
        };
    }
}
/* The next line is deliberately invalid syntax to show unparsable data. */
var $.{}{}