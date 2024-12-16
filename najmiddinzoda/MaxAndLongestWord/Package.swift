// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MaxAndLongestWord",
    targets: [
        .executableTarget(
            name: "MainModule",
            dependencies: ["CoreModule", "UtilitiesModule"]),
        .target(
            name: "CoreModule",
            dependencies: ["UtilitiesModule"]),
        .target(
            name: "UtilitiesModule",
            dependencies: []),
    ]
)
