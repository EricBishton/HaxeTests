//http://try-haxe.mrcdk.com/#d161A
package ;

class Test {
    static function main() {
        Main.main();
    }
}

class CompletionPopup506Test {
    public function new() {
    }
}

extern class Database {
    function new() {}
    function getProperty<T>(property:Property<T>):T;
}

abstract Property<T>(String) {
    public inline function new(name) {
        this = name;
    }
}

class unrecoverable {}

class Main {
    static inline var PLAYER_NAME = new Property<String>("playerName");
    static public function main() {
        var db = new Database();
        var playerName = db.getProperty(PLAYER_NAME). // <- don't drop completion popup
        $type(playerName);
    }
}