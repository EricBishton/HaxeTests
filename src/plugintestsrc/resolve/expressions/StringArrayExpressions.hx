package plugintestsrc.resolve.expressions;
using StringTools;

class Demo {
    function demo() {
        var lines = "--+--+--".split("+");
        for (i in 0...lines.length)
            if ((lines[i] = lines[i].rtrim()).length > 0) { // <-- rtrim and length remain unresolved -- Fixed!!
                trace(lines[i]);
                lines[i].rtrim();
                StringTools.rtrim(lines[i]); // <--rtrim is unresolved  -- Fixed!!
            }
    }
}
