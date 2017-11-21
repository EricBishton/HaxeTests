//Hey, When I have this code with the carret at the |:
//
//package ;
//class Test {
//public function new() {
//}
//
//    /** Hello |
//}
//And now I press enter to insert a newline, I get:
//
//package ;
//class Test {
//    public function new() {
//    }/** Hello
//    *
//**/
//}
//So it seems all white-spaces before the comment get removed.

package ;
class Test334 {
    public function new() {

    }

    /** Hello
    *
**/
    function something() {

    }
}
