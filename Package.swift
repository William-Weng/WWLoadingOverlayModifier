// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WWLoadingOverlayModifier",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "WWLoadingOverlayModifier", targets: ["WWLoadingOverlayModifier"]),
    ],
    targets: [
        .target(name: "WWLoadingOverlayModifier", resources: [.copy("Privacy")]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
