// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Nikita4",
    targets: [
        .executableTarget(
            name: "MainModule",
            dependencies: ["ValidationModule", "NumberAnalyzerModule"]
        ),
        .target(
            name: "ValidationModule",
            dependencies: []
        ),
        .target(
            name: "NumberAnalyzerModule",
            dependencies: ["ValidationModule"]
        ),
    ]
)
