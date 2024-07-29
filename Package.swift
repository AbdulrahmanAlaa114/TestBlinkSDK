// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "TestBlinkSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TestBlinkSDK",
            targets: ["TestBlinkSDK", "TestBlinkSDKBinary"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/tareksabry1337/TensorFlowLiteSwift.git", exact: "2.9.1"),
    ],
    targets: [
        .target(
            name: "TestBlinkSDK",
            dependencies: [
                "TestBlinkSDKBinary",
                .product(name: "TensorFlowLiteSwift", package: "TensorFlowLiteSwift")

            ],
            path: ""
        ),
        .binaryTarget(
            name: "TestBlinkSDKBinary",
            path: "./Sources/BlinkSDK.xcframework"
        )
    ]
)
