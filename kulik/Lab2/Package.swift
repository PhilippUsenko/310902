//swift-tools-version5.3
import PackageDescription

let package = Package(
    name Lab2,
    targets [
        .target(
            name Lab2,
            dependencies [Tasks]),
        .target(
            name Tasks,
            dependencies []),
        .testTarget(
            name Lab2Tests,
            dependencies [Lab2]),
    ]
)
