package tivo;
class VarDeclarationWithoutSemicolon {
    private static var init = {
        VarDeclarationWithoutSemicolon.FIRST = "#First!";
        VarDeclarationWithoutSemicolon.SECOND = "#Second.";
    }

    function new() {}
    private function doSomething() : Void {}

    var init2 = { var b = "yada"; b;}
    var a: String = "asdf"

    public macro function sdoi() {}
}