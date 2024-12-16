// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SumOfDigits",
    targets: [
        .executableTarget(
            name: "MainModule",
            dependencies: ["CoreModule", "ValidationModule"]),
        .target(
            name: "CoreModule",
            dependencies: []),
        .target(
            name: "ValidationModule",
            dependencies: []),
    ]
)
