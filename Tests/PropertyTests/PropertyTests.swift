
import XCTest
@testable import Property

class PropertyTests: XCTestCase {
    
    func testCount() throws {
        XCTAssertEqual(0, Property("").count)
        XCTAssertEqual(0, Property("a").count)
        XCTAssertEqual(1, Property("a b").count)
        XCTAssertEqual(1, Property("a b\n").count)
        XCTAssertEqual(1, Property("a b\na").count)
        XCTAssertEqual(1, Property("a b\nb ").count)
        XCTAssertEqual(2, Property("a b\nb c").count)
        XCTAssertEqual(2, Property("a b\nb c\na c").count)
    }

    func testValue() throws {
        XCTAssertEqual("b", Property("a b").get("a"))
        XCTAssertEqual("c", Property("a b\nb c").get("b"))
        XCTAssertEqual("c", Property("a b\nb c\na c").get("a"))
        XCTAssertEqual("b", Property("a b\nb c\na ").get("a"))
    }

}
