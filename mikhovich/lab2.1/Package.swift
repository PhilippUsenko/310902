// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "lab2.1",
    targets: [
        .executableTarget(
            name: "MainModule",
            dependencies: ["PrimeModule", "ValidationModule"]),
        .target(
            name: "PrimeModule",
            dependencies: []),
        .target(
            name: "ValidationModule",
            dependencies: []),
    ]
)
