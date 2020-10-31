package plugintestsrc;
class SelfMethod {
    function print(prime:Int){
        if(prime < 0) return;
        trace(prime);
        p  // p<caret> for completion.
    }
}