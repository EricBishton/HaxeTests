package tivo;
class SemicolonUnexpected {
    public function new() {
    }
}

extern class PromiseUtil
{
    static inline function resolve<T>(deliverable : Deliverable<T>, value : T #if debug , ?pos : PosInfos #end) : Void
    deliverable.deliver(value #if debug , pos #end);

    static inline function handleResolve<T>(deliverable : Deliverable<T>, value : T #if debug , ?pos : PosInfos #end) : Void
    deliverable.deliver(value #if debug , pos #end);

    static inline function _resolve<T>(deliverable : Deliverable<T>, value : T #if debug , ?pos : PosInfos #end) : Void
    deliverable.deliver(value #if debug , pos #end);
}


class Promise<T> {}
class PosInfos {}
class Deliverable<T> {}