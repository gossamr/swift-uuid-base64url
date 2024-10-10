import XCTest
@testable import UUIDB64URL

final class UUIDB64URLTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
        func testBase64urlEncoding() {
            let uuid = UUID()
            let base64urlString = uuid.base64url
            
            // Check if the encoded string is not empty and has valid characters.
            XCTAssertTrue(!base64urlString.isEmpty)
            XCTAssertEqual(base64urlString.rangeOfCharacter(from: CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-")), nil, "Encoded string contains invalid characters")
        }
        
        func testBase64urlDecoding() throws {
            let uuid = UUID()
            let base64urlString = uuid.base64url
            
            // Decode the Base64URL string back to a UUID.
            let decodedUUID = UUID(base64url: base64urlString)
            
            // Check if the decoded UUID matches the original UUID.
            XCTAssertEqual(uuid, decodedUUID)
        }
    }
}
