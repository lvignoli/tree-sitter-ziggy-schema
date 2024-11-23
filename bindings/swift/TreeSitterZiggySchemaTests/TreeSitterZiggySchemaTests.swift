import XCTest
import SwiftTreeSitter
import TreeSitterZiggySchema

final class TreeSitterZiggySchemaTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_ziggy_schema())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading ZiggySchema grammar")
    }
}
