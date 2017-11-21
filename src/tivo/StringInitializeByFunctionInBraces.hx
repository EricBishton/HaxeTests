package tivo;
class StringInitializeByFunctionInBraces {

    private static var IPTV_MSO : String = {
        var t = ModelFactory.getCore().getApplicationModel().getProperties().getString("IPTV_MSO", "KABLETOWN");
        t;
    };

    static function main() {
        trace(IPTV_MSO);
    }
    public function new() {
    }
}

class ModelFactory {
    public function new() {}
    public static function getCore() : Core { return new Core();}
}

class Core {
    public function new() {}
    public function getApplicationModel() : ApplicationModel { return new ApplicationModel();}
}

class ApplicationModel {
    public function new() {}
    public function getProperties() : Properties { return new Properties();}
}

class Properties {
    public function new() {}
    public function getString(primaryKey:String, secondaryKey:String) : String { return "Test";}
}