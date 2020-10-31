package ;
class TestIssue121 {
    public function new() {
    }

    @:final #if flash@:keep #end public function keepme() {}  // broken

    @:final
    #if nape_swc@:keep #end         // broken
    public function keepme2() {}

    public static function doSomething() {
        #if flash dosomthing #end               // broken
        #if mobile dosomethingelse #end         // broken

        #if !flash keepme(); #end

        #if flash dosomthing #end #if mobile dosomethingelse #end  // working
    }

    #if nape_swc @:keep #end        // working
    @:final public function keepme3() {}

}
