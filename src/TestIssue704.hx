package ;
class TestIssue704 {
    public static function main() {
        trace(createInstance(null));
    }

    static function createInstance(type:Class<Dynamic>) {
        return type == null ? throw "Mamma mia" : Type.createInstance(type, []);
    }
}