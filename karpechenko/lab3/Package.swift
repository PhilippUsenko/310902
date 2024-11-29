// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lab3",
	dependencies:[
		.package(path: "./lib"),
	],
    targets: [
       .executableTarget(
            name: "lab3",
			dependencies: ["lib"]
		),
    ]
)
