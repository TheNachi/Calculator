// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NetworkService+Models",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "NetworkService+Models",
            targets: ["NetworkService+Models"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "NetworkService+Models",
            dependencies: []),
        .testTarget(
            name: "NetworkService+ModelsTests",
            dependencies: ["NetworkService+Models"]),
    ],
    swiftLanguageVersions: [.v4, .v4_2, .v5]
)
