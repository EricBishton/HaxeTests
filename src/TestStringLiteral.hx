package ;

class StringLiteral {
    public function void main(){   // <---  Yes!!! There is supposed to be an error here.  This isn't C.
        "foo".charCodeAt(1); // "foo".charC<caret>odeAt(1);
    }
}
