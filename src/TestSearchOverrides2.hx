package ;
class TestSearchOverrides2 {
    public function new() {
    }

    function play() {
        playHighNotes();
        playMidNotes();
        playLowNotes();

        var player1 : Base = new Mid();
        var player2 : Base = new Top2();
        player1.play();
        player2.play();
    }

    function playHighNotes() {
        var top = new Top();
        var top2 = new Top2();
        top.play();
        top2.play();
    }

    function playMidNotes() {
        var mid = new Mid();
        var mid2 = new Mid2();
        mid.play();
        mid2.play()
    }

    function playLowNotes() {
        var base = new Base();
        base.play();
        new Base().play();
    }

    function playThis(player : Base) {
        player.play();
    }
}

class Base {
    function new() {}
    function play() {}
}

class Mid extends Base {
    function new() {}
    override function play() {}
}

class Mid2 extends Base {
    function new() {}
    override function play() {}
}

class Top extends Mid {
    function new() {}
    override function play() {}
}

class Top2 extends Mid2 {
    function new() {}
    override function play() {}
}

