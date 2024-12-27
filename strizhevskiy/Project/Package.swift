// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Project",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .executable(
            name: "Lab1Part1",
            targets: ["Lab1Part1"]),
        .executable(
            name: "Lab1Part2",
            targets: ["Lab1Part2"]),
        .executable(
            name: "Lab2",
            targets: ["Lab2"]),
        .executable(
            name: "Lab3",
            targets: ["Lab3"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "Lab1Part1"),
        .executableTarget(
            name: "Lab1Part2"),
        .executableTarget(
            name: "Lab2"),
        .executableTarget(
            name: "Lab3"),
    ]
)
