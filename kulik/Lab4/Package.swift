// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Lab4",
    targets: [
        .target(
            name: "Lab4",
            dependencies: ["Protocols", "Generators"]),
        .target(
            name: "Protocols",
            dependencies: []),
        .target(
            name: "Generators",
            dependencies: ["Protocols"]),
        .testTarget(
            name: "Lab4Tests",
            dependencies: ["Lab4"]),
    ]
)
