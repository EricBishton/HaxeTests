// Only checks types if HaxeSemanticeAnnotatorConfig.ENABLE_EXPERIMENTAL_BODY_CHECK is true;
package plugintestsrc.annotation.semantic.body;
class Test {
    public function test() {
        var aaa : Demo<unknown> = new Demo();  // TODO: Remove type parameters when HaxeTypeResolver:384 is implemented. var aaa = new Demo();
        aaa.push('test');
        // aaa.push(<error descr="Can't assign Int = 10 to String">10</error>);
        aaa.push(10);
        return aaa;
    }
}

class Demo<T> {
    public function new() { }

    public function push(value:T):Int {
    }
}