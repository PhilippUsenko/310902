// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Nikita3",
    targets: [
        .executableTarget(
            name: "MainModule",
            dependencies: ["ValidationModule", "NikolaModule"]
        ),
        .target(
            name: "ValidationModule",
            dependencies: []
        ),
        .target(
            name: "NikolaModule",
            dependencies: ["ValidationModule"]
        ),
    ]
)
