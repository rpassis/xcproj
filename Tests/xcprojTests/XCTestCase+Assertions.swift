import Foundation
import XCTest

extension XCTestCase {
    func XCTAssertNotNilAndUnwrap<T>(_ obj: T?, message: String = "") -> T {
        guard let unwrappedObj = obj else {
            XCTAssertNotNil(obj, message)
            fatalError() // Unreachable since the above assertion will fail
        }
        return unwrappedObj
    }
}
