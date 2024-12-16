// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MyPersonProject",
    platforms: [.macOS(.v13)],
    products: [
        .executable(name: "MyPersonProject", targets: ["MainModule"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ValidationModule",
            dependencies: []
        ),
        .target(
            name: "PersonModule",
            dependencies: ["ValidationModule"]
        ),
        .executableTarget(
            name: "MainModule",
            dependencies: ["PersonModule"]
        )
    ]
)
