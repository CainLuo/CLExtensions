// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "CLExtensions",
                      platforms: [.iOS(.v10)],
                      products: [.library(name: "CLExtensions",
                                          targets: ["CLExtensions"])],
                      targets: [.target(name: "CLExtensions",
                                        path: "Source")],
                      swiftLanguageVersions: [.v5])

