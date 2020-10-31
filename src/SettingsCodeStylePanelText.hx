class Foo {
    public var tmp:Array<Array<Int>>;

    public function foo(x:Int, z)
    {
        new Foo(x, 2);
        function absSum(a:Int, b:Int):Int
        {
            var value:Int = a + b;
            return value > 0 ? value : -value;
        }
        var increment:Int -> Int = function(i:Int) {return ++i;}
        var arr = [ "zero", "one" ];
        var y = (x ^ 0x123) << 2;
        for (i in 0...10) {
            y = (y ^ 0x123) << 2;
        }
        var k = x % 2 == 1 ? 0 : 1;
        do {
            try {
                if (0 < x && x < 10) {
                    while (x != y) {
                        x = absSum(x * 3, 5);
                    }
                    z += 2;
                }
                    else if (x > 20) {
                        z = x << 1;
                    }
                        else {
                            z = x | 2;
                        }
                switch (k) {
                    case 0:
                        var s1 = 'zero';
                    case 2:
                        var s1 = 'two';
                    default:
                        var s1 = 'other';
                }
            } catch (e:String) {
                var message = arr[0];
            }
        } while (x < 0);
    }

    public function new(n:Int, m:Int)
    {
        tmp = new Array<Array<Int>>();
        for (i in 0...n * m)tmp.push(new Array<Int>());
    }
}
