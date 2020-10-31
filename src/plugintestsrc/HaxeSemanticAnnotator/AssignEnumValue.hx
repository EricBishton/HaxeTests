package plugintestsrc.HaxeSemanticAnnotator;

class AssignEnumValue {
    public function new() {

        var ok1:EnumValue = MyEnum.FIRST;
        var ok2:EnumValue = enuVal;

        var tmp:MyEnum = MyEnum.SECOND;
        var ok3:EnumValue = tmp;
        var ok4:EnumValue = getEnum();

        var wrong1:EnumValue = MyEnum;
        var wrong2:EnumValue = Enum<MyEnum>;
    }

    public function getEnum():MyEnum {
        return MyEnum.THIRD;
    }
}
enum MyEnum {
    FIRST;
    SECOND;
    THIRD;
}
