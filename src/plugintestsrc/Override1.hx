package plugintestsrc;

class Override1 extends Foo<Bar> {
    //<caret>  Alt+Insert - Override getFoo().
}

class Foo<T> {
    public function getFoo():T {
        return null;
    }
}

class Bar {

}