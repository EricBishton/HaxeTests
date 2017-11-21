package ;
class TestIssue212 {

    /* one two three */

    /*one
    two
    three*/
    
    /*
    one
    two
    three
     */

    /*
     * one
     * two
     * three
     */

    /** << Clicking here should not select several functions.
     * Some demo text. This should not select several functions.
     */
    public function new() {
        // comment one word one word
        var a = "one word one word";
        /* A single-line block comment. */
        var b:Array<String> = "foo-bar_foo.ololo foo bar";
        var c = 'single-quoted string';
        var d = "Tab\tdelimited\tstring.\nNewlines work too.  \bYeah!";
    }
}
