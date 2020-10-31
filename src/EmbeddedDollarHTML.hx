package ;
class EmbeddedDollarHTML {
    public function new() {
    }
}
import haxe.macro.Expr;
using haxe.macro.ExprTools;
using Lambda;

typedef Params = Map<String, String>;

class Test {
    static public function main() {
        trace(result(["My content"]));
    }

    static function result(args:Array<String>) {
        var s = testMacro(
            $html {{
            $head {
            $title { "XML encoding with Haxe" }
            };
            $body {{
            $h1 { "XML encoding with Haxe" };
            $a {{ href = "http://haxe.org"; "Haxe"; }};

            $p {{
            "This is some";
            $b { " mixed " };
            "text. For more see the ";
            $a {{ href = "http://haxe.org"; "Haxe"; }};
            " project ";
            }}
            $p { "someText" };

            $p {
            for (arg in args)
            arg
            }
            }}
            }}
        );
        return s;
    }

    static function html(params:Params, arg:String) {
        return '<html>$arg</html>';
    }

    static function head(params:Params, arg:String) {
        return '<head>$arg</head>';
    }

    static function body(params:Params, arg:String) {
        return '<body>$arg</body>';
    }

    static function title(params:Params, arg:String) {
        return '<title>$arg</title>';
    }

    static function h1(params:Params, arg:String) {
        return '<h1>$arg</h1>';
    }

    static function a(params:Params, arg:String) {
        var href = params.get("href");
        return '<a href="$href">$arg</a>';
    }

    static function p(params:Params, arg:String) {
        return '<p>$arg</p>';
    }

    static function b(params:Params, arg:String) {
        return '<b>$arg</b>';
    }

    macro static function tag(nameExpr:Expr, arg:Expr) {
        var args = switch (arg.expr) {
            case EBlock(el): el;
            case _: [arg];
        }
        var name = switch(nameExpr) {
            case macro $i{name}: name;
            case _: throw false;
        }
        var a = [];
        var params = [];
        for (arg in args) {
            switch (arg) {
                case macro $i{name} = $value: params.push(macro $v{name} => $value);
                case macro for($e1) $e2: a.push(macro [for($e1) $e2].join(""));
                case _: a.push(arg);
            }
        }
        var e = a.fold(function(e1,acc) return macro $acc + $e1, macro '');
        var params = params.length == 0 ? (macro new Map()) : macro $a{params};
        var e = macro (@:pos(nameExpr.pos)$i{name})($params, $e);
        return e;
    }

    macro static function testMacro(e:Expr) {
        function loop(e:Expr) {
            return switch (e.expr) {
                case EMeta(m, e1):
                    var name = m.name.substr(1);
                    var e1 = loop(e1);
                    macro tag(@:pos(m.pos) $i{name}, $e1);
                case _:
                    e.map(loop);
            }
        }
        e = loop(e);
        return e;
    }
}