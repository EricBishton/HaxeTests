package tivo;
class ExtendsImplementsHighlighting {
    public function new() {
        var b = new Blah();
        b.doSomething();
    }
}

interface Something {
    public function doSomething() : String;
}

class Base {
    public function new() {}
    public function doBase() { return "Base";}
    public function doSomething() : String { return doBase(); }
}

class Blah extends Base implements Something {
    public function new() {}
}
