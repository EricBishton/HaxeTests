package ;

#if (debug && cpp)
import debugger.Local;
import debugger.HaxeRemote;
#end

import TestIssue232;
import TestIssue528;
//import fakelib.FakelibMain;
//import nape.phys.Body;

class Main {
#if (debug && cpp)
    static public var remoteDebugger(default,default) : HaxeRemote;
    static public var localDebugger(default,default) : Local;
#end

    public function new() {
    }

    public static function main():Void {

        try {
            startDebugger();
            TestIssue232.main();
            TestIssue528.testIssue528();

//            var fakelib = new FakelibMain();
            var body = new Body();

        } catch (e:Dynamic) {
            trace("Caught Dynamic:");
            trace(e);
        }

    }

    public static function startDebugger():Void {
        #if (debug && cpp)
        var startDebugger:Bool = false;
        var debuggerHost:String = "";
        var argStartDebugger:String = "-start_debugger";
        var pDebuggerHost:EReg = ~/-debugger_host=(.+)/;

        for (arg in Sys.args()) {
            if(arg == argStartDebugger){
                startDebugger = true;
            }
            else if(pDebuggerHost.match(arg)){
                debuggerHost = pDebuggerHost.matched(1);
            }
        }

        if(startDebugger){
            if(debuggerHost != "") {
                trace("Connecting to remote debug session at " + debuggerHost);
                var args:Array<String> = debuggerHost.split(":");
                var remoteDebugger = new debugger.HaxeRemote(true, args[0], Std.parseInt(args[1]));
            }
            else {
                trace("Starting local debug session.");
                localDebugger = new debugger.Local(true);
            }
            trace("Debugger is ready.");
        } else {
            trace("No debug session requested.");
        }
        #else
        #if debug
        trace("Not a C++ target - skipping hxcpp debugger.");
        #end
        #end
    }

}

class Test {
    static function main() {
        trace("Haxe is great!");

//        var a = 1;
//        switch(a) {
//            case 1:
//                break; // <--- Should show error bars.
//        }
    }
}
