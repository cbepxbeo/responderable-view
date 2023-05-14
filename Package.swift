// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "ResponderableView",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "ResponderableView",
            targets: ["ResponderableView"]),
    ],
    targets: [
        .target(
            name: "ResponderableView",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "ResponderableViewTests",
            dependencies: ["ResponderableView"]
         ),
    ],
    swiftLanguageVersions: [ .version("5.1") ]
)
