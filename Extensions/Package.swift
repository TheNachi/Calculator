// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Extensions",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Extensions",
            targets: ["Extensions"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Extensions",
            dependencies: []),
        .testTarget(
            name: "ExtensionsTests",
            dependencies: ["Extensions"]),
    ],
    swiftLanguageVersions: [.v4, .v4_2, .v5]
)
