package masque;
class FromLorin {
    public function new() {
        // The next line causes a "Redundant character escape '\/' in RegExp." message.
        var ereg:EReg = ~/[^a-zA-Z0-9-_~\/.]/;  // In '\/', the \ isn't redundant in Haxe.  It is in Java.
    }
}
