// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "PusherSwift",
    platforms: [.iOS("13.0"), .macOS("10.15"), .tvOS("13.0")],
    products: [
        .library(name: "PusherSwift", targets: ["PusherSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/pusher/NWWebSocket.git", .upToNextMajor(from: "0.5.4")),
        .package(url: "https://github.com/bitmark-inc/tweetnacl-swiftwrap", .upToNextMajor(from: "1.0.0")),
    ], 
    targets: [
        .target(
            name: "PusherSwift",
            dependencies: [
                "NWWebSocket",
                .product(name: "TweetNacl", package: "tweetnacl-swiftwrap"),
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "PusherSwiftTests",
            dependencies: ["PusherSwift"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
