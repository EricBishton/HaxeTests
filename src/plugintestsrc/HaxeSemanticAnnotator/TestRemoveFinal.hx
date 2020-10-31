// Test "Remove @:final from Base.test" fix.
package ;

class RemoveFinal extends Base {
    //override public function <error descr="Can't override static, inline or final methods">te<caret>st</error>() {
    override public function test() {}
}

class Base {
    @:final public function test() {
    }
}