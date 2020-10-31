package ;
class TabDialogText {
      public function new() {
          }
      }

//Note: Continuation setting can be overridden by wrapping settings.
class Foo {
      @:isVar var notInlined:Float = 5;
      @:isVar var property(default, never):Float;
      final finalProp = "This is a final property (can't be set).";

      public function new() {
          property = 5.2;

          notInlined = 1 | 2 | 4 | 8
                | 16 | 32 | 64 | 128;
          }

      public function isZeroOrInRange(aFloat:Float, min:Float, max:Float):String {
          return aFloat == 0
                || (aFloat >= min
                && aFloat <= max)
                ? "Yes"
                : "No";
          }

      public function testColors() {
          var colors = [
              'red', 'green', 'blue',
              'black', 'white',
              'gray'];
          for (colorIndex in 0...colors.length) {
              var colorString
                    = colors[colorIndex];
              var first
                    = 1,
                    second
                          = 2;
              }
          do {
              colors.pop();
              }
          while (colors .length > 0);
          }

      function testAnonymous() {
          var anon:{x:Int, y:Int};
          }

      function testSwitch(i:Int) {
          switch(i) {
              case 2 => b:
                  trace(b);
              case _:
                  trace("psuedo default");
              default:
                  trace("real default");
              }
          }

      function isMultipleOf(value:Float, of:Float):Bool return value % of == 0;

      public function FizzBuzz() {
          for (value in 1...101) {
              trace(switch [isMultipleOf(value, 3), isMultipleOf(value, 5)] {
                  case [true, true]: "FizzBuzz";
                  case [true, false]: "Fizz";
                  case [false, true]: "Buzz";
                  case [false, false]: Std.string(value);
                  });
              }
          }
      }

class Foo {
      public function new() {}

      public static function print(arr:Array<Int>) {
          for (i in 0...arr.length)
              trace(arr[i]);
          if (arr.length == 0
                || arr.length == 0)
              trace("empty");
          else
              trace("empty");
          do
              trace(arr.pop())
          while (arr.length > 0);
          do {
              trace(arr.pop()) }
          while ( 1 - 1 == 0 );
          if (1) {
              // It's not always working correctly.
              }
          else if ( 2 ) {
              // Should'a been here but was at the beginning of the line.  :/
              }

          }

      public static function main() {
          var arr:Array<Int> = new Array<Int>();
          for (i in 0...10)
              arr.push(i);
          print(arr);
          }
      }