// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlinkSDK",
    platforms: [.iOS(.v13)],
    products: [
        // Define the library product that uses the binary and other dependencies.
        .library(
            name: "BlinkSDK",
            targets: ["BlinkSDK"]
        ),
    ],
    targets: [
        // The binary target that includes the precompiled xcframework.
        .binaryTarget(
            name: "BlinkSDK",
            path: "./Sources/BlinkSDK.xcframework"
        )
    ]
)
