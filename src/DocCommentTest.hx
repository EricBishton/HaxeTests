package ;



class DocCommentTest {
    public function new() {
    }

    /**
     * This does something
     *
     * A couple of lines of text.
     *
     * @param a An integer.
     * @param b a string.
     **/
    public function doThis(a : Int, b : String) : Void {}

    /**
    * 
**/
    public function dothat() {
        return doThis(1,"this");
    }

}
