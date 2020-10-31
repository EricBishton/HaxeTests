package ;
class TestIssue785_FileRenameRefactoringAlsoRenamesConstructor { // <<< - Refactor->Rename this class.
    public function new() {  // <<< - This name should not change.
    }

    public static function create() : TestIssue785_FileRenameRefactoringAlsoRenamesConstructor {
        return new TestIssue785_FileRenameRefactoringAlsoRenamesConstructor();
    }
}

class ShortClass { // <<< - Refactor->Rename this class.
    public function new() {  // <<< - This name should not change.
    }

    public static function create() : ShortClass {
        return new ShortClass();
    }
}

