// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UUIDB64URL",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UUIDB64URL",
            targets: ["UUIDB64URL"]),
    ],
    dependencies: [
        .package(name: "ExtrasBase64", url: "https://github.com/swift-extras/swift-extras-base64.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UUIDB64URL",
            dependencies: ["ExtrasBase64"]
        ),
        .testTarget(
            name: "UUIDB64URLTests",
            dependencies: ["UUIDB64URL"]),
    ]
)
