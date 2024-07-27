// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "TestBlinkSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TestBlinkSDK",
            targets: ["TestBlinkSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TestBlinkSDK",
            path: "./Sources/BlinkSDK.xcframework"
        )
    ]
)
