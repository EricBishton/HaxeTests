package;
class AssignValueToFinalInCase {
    public function main() {
        var i:Int = 0;
        switch i {
            case final v:
                v = 2;
            case 2 | 4:
                trace("two or four");
            case 1 => result:
                trace(result);
        }
    }
}
