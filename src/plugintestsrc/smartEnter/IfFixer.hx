// Ctrl+Shift+Enter to complete statment
package plugintestsrc.smartEnter;
class Main {
    function test() {
        if (a) a;

//      if<caret>
        if (false) {}

        if (a) {

        }
    }
}


class A {

}

class C {

}