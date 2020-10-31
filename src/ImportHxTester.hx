// Tests using import.hx for resolution.

package ;
class ImportHxTester {
    var helper = new TestHelper();

    public function new() {
        helper.show();

        trace ([1,5,4,6].sort((a,b)->b-a));
        "I've got something to say!".print();  // << Should be using TestHelper.print()
        TestHelper.print("This works.");
    }
}
