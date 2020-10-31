package ;

/**
* Base class for all Collections.
**/
class CollectionBase
{
  /**
	* Name of the Collection.
	**/
  public var name: String = "None";

  private function new (name: String)
  {
    this.name = name;
  }

  public function toString(): String
  {
    return name;
  }

}


/**
* Base class for Collections that can be connected via a parent-child relationship.
**/
class CollectionParentBase<T, U:{function toStringDump(parent: T):String;}> extends CollectionBase implements CollectionParentI<T, U>
{

  public var parent: T;

  /**
	* Returns the children of this CollectionBase.
  **/
  @:isVar public var children (get, null): Array<U>;
  //Ensures that the Array of children is only created when necessary.
  private function get_children (): Array<U>
  {
    if (children == null) children = new Array<U>();
    return children;
  }

  private function new (name: String)
  {
    super(name);
  }

  override public function toString(): String
  {
    return "CollectionParentBase: " + name;
  }

  /**
	* Returns a complete representation of this item as String.
	**/
  public function toStringDump(parent: T): String
  {
    var ret: String = name;
    if (parent != null)
      ret += " " + parent + " ";
    for (child in children)
      ret += "\n" + child.toStringDump(null);   // <<<<----------- No completion on child.|
    return ret;
  }

}

/**
* Ensures that a class can provide child/parent linking using different types for the parent and child.
**/
interface CollectionParentI<T, U:{function toStringDump(parent: T):String;}>
{

  /**
	* Return the parent object.
	**/
  public var parent (default, default): T;

  /**
	* Return an array of children.
	**/
  public var children (get, null): Array<U>;

  /**
	* Make sure that the object defines how to represent itself as String.
	**/
  public function toString(): String;

  /**
	* Make sure that the object defines how to represent itself as (verbose) String.
	**/
  public function toStringDump(parent: T): String;

}

/**
* Extends CollectionParentBase offering support for Array-based Collections.
**/
class CollectionArrayBase extends CollectionParentBase<CollectionArrayBase, CollectionArrayItemBase>
{
  public function new (name: String)
  {
    super(name);
  }
}

class SomeCollectionArray extends CollectionArrayBase
{
  public function new (name: String)
  {
    super(name);
    var leaf1: CollectionArrayItemBase = new CollectionArrayItemBase("Leaf 1", this);
    var leaf2: CollectionArrayItemBase = new CollectionArrayItemBase("Leaf 2", this);
    children.push(leaf1);
    children.push(leaf2);
  }
}

/**
* Extends CollectionArrayBase providing item-specific functionality.
**/
class CollectionArrayItemBase extends CollectionArrayBase
{
  public function new (name: String, parent: CollectionArrayBase)
  {
    this.parent = parent;
    super(name);
  }
}

class Main {
  static function main() {
    var hier1: SomeCollectionArray = new SomeCollectionArray("Hierarchy 1");
    var hierA: SomeCollectionArray = new SomeCollectionArray("Hierarchy A");
    trace(hier1.toStringDump(hierA));
  }
}
