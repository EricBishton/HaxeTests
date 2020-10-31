package ;
class RefactorIntroduceVariable {
    public function new() {
    }

    public function tryThis() {
        this.newVar  = "string";  // <<-- Alt+Enter on newVar should pop up with three options:
                                 //       Create Local Variable
                                 //       Create Field
                                 //       Create parameter

        this.newMethod();

        AnotherClass.newMethod();
        var ac = new AnotherClass();
        ac.newStringMethod("string");
        ac.newValueMethod(3.5);
        ac.newTypedMethod(this);

        ac.doSomething(ac.newField);
        ac.doSomethingInt(ac.my_int);
        ac.doSomethingInt(this_int);
        ac.doSomethingFloat(ac.my_float);
        ac.doSomethingFloat(this_myfloat);
        ac.doSomethingClass(ac.newClass);
        ac.doSomethingClass(this_myclass);
    }
}

class AnotherClass {
    public function doSomethingFloat(f:Float) {}

    public function doSomethingInt(i:Int) {}

    public function doSomethingClass(c:RefactorIntroduceVariable) {}

}