// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "lab3",
    targets: [
        .executableTarget(
            name: "MainModule",
            dependencies: ["ValidationModule", "StringComparisonModule"]),
        .target(
            name: "ValidationModule",
            dependencies: []),
        .target(
            name: "StringComparisonModule",
            dependencies: []),
    ]
)