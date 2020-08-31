// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EventGen",
    products: [
        .executable(name: "EventGen", targets: ["EventGen"]),
    ],
    dependencies: [

       .package(name: "swift-argument-parser",
        url: "https://github.com/apple/swift-argument-parser",
        from: "0.0.1")
    ],
    targets: [

        .target(
            name: "EventGen",
            dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")]),
        .testTarget(
            name: "EventGenTests",
            dependencies: ["EventGen"]),
    ]
)
