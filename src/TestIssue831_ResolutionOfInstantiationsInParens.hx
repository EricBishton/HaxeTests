package ;

using StringTools;

class TestIssue831_ResolutionOfInstantiationsInParens {
    public function new() {

        // Note:  There is no replace on the String class, but there is an indexOf.  'using StringTools;' brings
        //        in replace and a number of other static extensions.
        //        Also, the bug reported is that *completion* doesn't have the correct list of members.

        "banana".replace("na", "ba"); // Resolves
        var apples = "apples";
        apples.replace("app", "abb"); // Resolves

        // Reported issues.
        ("banana" + "apples").replace("a", "o"); // Doesn't Resolve
        ("banana" + "apples").indexOf("a"); // Doesn't Resolve
        ("apples").indexOf("a"); // Doesn't Resolve

        // Unreported new tests.
        new String("bananas").charCodeAt(0);  // Resolves.
        (new String("bananas")).charCodeAt(0);  // Doesn't Resolve.
        "apples".indexOf("a");  // Resolves.

    }
}
