// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Lab3",
    targets: [
        .target(
            name: "Lab3",
            dependencies: ["Transport"]),
        .target(
            name: "Transport",
            dependencies: []),
        .testTarget(
            name: "Lab3Tests",
            dependencies: ["Lab3"]),
    ]
)
