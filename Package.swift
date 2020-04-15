// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CLExtensions",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "CLExtensions", targets: ["CLExtensions"]),
        .library(name: "CLExtensions+Rx", targets: ["CLExtensions+Rx"]),
        .library(name: "CLExtensions+Log", targets: ["CLExtensions+Log"]),
        .library(name: "CLExtensions+Localize", targets: ["CLExtensions+Localize"])
    ],
    targets: [
        .target(name: "CLExtensions", path: "Source")
        .target(name: "CLExtensions+Rx", path: "CLExtensions+Rx")
        .target(name: "CLExtensions+Log", path: "CLExtensions+Log")
        .target(name: "CLExtensions+Localize", path: "CLExtensions+Localize")
    ],
    swiftLanguageVersions: [.v5]
)

