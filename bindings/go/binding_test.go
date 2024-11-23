package tree_sitter_ziggy_schema_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_ziggy_schema "github.com/tree-sitter/tree-sitter-ziggy_schema/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_ziggy_schema.Language())
	if language == nil {
		t.Errorf("Error loading ZiggySchema grammar")
	}
}
