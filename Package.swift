// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "T21Mapping",
    products: [
        .library(
            name: "T21Mapping",
            targets: ["T21Mapping"]),
    ],
    targets: [
        .target(
            name: "T21Mapping",
            dependencies: [],
            path: "./src"),
    ]
)
