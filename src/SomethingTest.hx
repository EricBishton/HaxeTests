// Resolution test for a class that is imported from a file that doesn't contain its properly named class.
// e.g. SomethingIds doesn't contain a class called SomethingIds, but does contain a class called Something.
package ;

import SomethingIds;

class SomethingTest {
    public function new() {
        var v :  Something = 1;
    }
}
