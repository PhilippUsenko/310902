// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "PersonManagement",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "MainModule", targets: ["MainModule"])
    ],
    dependencies: [],
    targets: [
        .target(name: "MainModule", dependencies: ["PersonModule", "ValidationModule", "SearchModule"]),
        .target(name: "PersonModule", dependencies: []),
        .target(name: "ValidationModule", dependencies: []),
        .target(name: "SearchModule", dependencies: ["PersonModule"])
    ]
)
