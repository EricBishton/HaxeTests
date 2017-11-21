package ;

enum E {
    A;
    B;
}

class ResolveEnum351 {
    public function new() {
    }

    static function main() {
        var v1:E = A;
        var v2 = A;
        switch v2 {
            case A:
            case B:
        }
    }
}

