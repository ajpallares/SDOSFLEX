// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SDOSFLEX",
    platforms: [
       .iOS("8.0")
    ],
    products: [
        .library(
            name: "SDOSFLEX",
            targets: ["SDOSFLEX"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SDOSFLEX",
            dependencies: [
            ],
            path: "src")
    ]
)
