// File should not have any errors.
package plugintestsrc;
import Map;

class ClassMap<K/*:Class<Dynamic>*/, V> implements haxe.Constraints.IMap<K,V> {
    public function keys():Iterator<K> {}
    public function keyValueIterator():  KeyValueIterator<K,V> {}
}