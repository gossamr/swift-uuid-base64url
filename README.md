# UUIDB64URL

[![Swift](https://img.shields.io/badge/swift-5-blue.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/platform-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS-lightgray.svg)](https://developer.apple.com/swift/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

UUIDB64URL is a simple Swift Package that extends the `UUID` class to add support for decoding UUIDs from and encoding UUIDs to base64url ([RFC 4648](https://datatracker.ietf.org/doc/html/rfc4648)) strings.

## Installation

### Swift Package Manager

To integrate UUIDB64URL into your Xcode project using Swift Package Manager, follow these steps:

1. Open your target in Xcode.
2. Go to "File" -> "Add Package Dependencies...".
3. In the search bar, enter `https://github.com/gossamr/swift-uuid-base64url.git` and click "Add Package".

## Usage

Import the UUIDB64URL package in your Swift files:

```swift
import UUIDB64URL
```

### Encoding UUID to Base64url

To encode a `UUID` instance to a base64url string, use the following accessor:

```swift
let uuid = UUID()
let base64urlString = uuid.base64url
print("UUID encoded as Base64url String: \(base64urlString)")
```

### Decoding Base64url to UUID

To decode a base64url string back to a `UUID` instance, use the following initializer:

```swift
let recovered = UUID(base64url: base64urlString) // returns UUID?, as decoding can fail
```

## License

UUIDB64URL is released under the MIT license. See LICENSE for more information.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request to improve this package.

