// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "laba1",
    dependencies: [
        .package(path: "../MySwiftPackage")
    ],
    targets: [
        .executableTarget(
            name: "laba1",
            dependencies: ["MySwiftPackage"]
        )
        //.target(
        //    name: "MySwiftApp",
        //    dependencies: ["MySwiftPackage"]),

    ]
)
