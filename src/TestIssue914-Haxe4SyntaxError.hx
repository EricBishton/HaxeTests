package ;
class TestIssue914Haxe4SyntaxError {
  public function new() {
    var b = new Bui
  }
}

class Main {
  static function main() {
    var triggerClass:TriggerClass = new TriggerClass("abc");
    trace(triggerClass.toStringDump());
  }
}

enum SomeEnum {
  Member1;
  Member2;
}


class WantToBeBuilt {
  public var desc:String;
  public var someEnum:SomeEnum;

  public function new(desc:String, someEnum:SomeEnum) {
    this.desc = desc;
    this.someEnum = someEnum;
  }

  public function toStringDump():String {
    return desc + " " + someEnum.Member1.getName();  // someEnum.getName()??
  }
}

typedef Stringable = {function toStringDump():String;};
@:generic
#if (haxe_ver >= 4)
class BuilderClass<T:haxe.Constraints.Constructible<String -> SomeEnum -> Void> & Stringable>
#else
class BuilderClass<T:(haxe.Constraints.Constructible<String -> SomeEnum -> Void>, Stringable)>
#end
  {
  public var name:String;
  public var instance:T;

  public function new(name:String) {
    this.name = name;
    //Error:(54, 3) Constraint check failure for
    //build.T haxe.Constructible<(String, SomeEnum) -> Void> should be { toStringDump : Void -> String }
    build(name, SomeEnum.Member1);
    //build<T>(name, SomeEnum.Member1); //Error:(54, 26) Unexpected . (no other errors)
  }

  public function build
  (desc:String, someEnum:SomeEnum):Void {
    instance = new T(desc, someEnum); //Error:(61, 3) build.T should be BuilderClass.T
  }

  public function toString():String {
    return "BuilderClass name: " + name;
  }
}

class TriggerClass extends BuilderClass<WantToBeBuilt> {
  public function new(name:String) {
    super(name);
  }

  public function toStringDump():String {
    return super.toString();
  }
}

