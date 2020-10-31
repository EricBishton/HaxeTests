// NOTE: The error doesn't display unless HaxeSemanticAnnotatorConfig.ENABLE_EXPERIMENTAL_BODY_CHECK is set true!
//       (Which is the case for tests, but not for the app running.)
package plugintestsrc.annotation.semantic.body;

class Test {
    public function test() {
        var a;
        a = 10;
//        a = <error descr="Incompatible type: String should be Int">'test'</error>;
        a = 'test';
        a = 20;
    }
}