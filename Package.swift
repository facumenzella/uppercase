// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "uppercase",
    products: [.executable(name: "uppercase", targets: ["uppercase"])],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "uppercase",
            dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")],
            path: "uppercase/"
        )
    ]
)
