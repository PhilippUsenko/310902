// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "lab2.2",
    targets: [
        .executableTarget(
            name: "MainModule",
            dependencies: ["CoreModule", "UtilitiesModule"]),
        .target(
            name: "CoreModule",
            dependencies: []),
        .target(
            name: "UtilitiesModule",
            dependencies: []),
    ]
)
