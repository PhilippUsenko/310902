// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "lab4",
    platforms: [.macOS(.v13)],
    products: [
        .executable(name: "16.4", targets: ["MainModule"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ValidationModule",
            dependencies: []
        ),
        .target(
            name: "FractionsModule",
            dependencies: ["ValidationModule"]
        ),
        .executableTarget(
            name: "MainModule",
            dependencies: ["FractionsModule"]
        )
    ]
)
