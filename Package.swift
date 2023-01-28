// swift-tools-version:5.7

import PackageDescription

let package = Package(
  name: "swift-custom-dump",
  platforms: [
    .iOS(.v11),
    .macCatalyst(.v13),
    .tvOS(.v11),
    .macOS(.v11),
    .watchOS(.v4)
  ],
  products: [
    .library(
      name: "CustomDump",
      targets: ["CustomDump"]
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/braze-inc/xctest-dynamic-overlay",
      branch: "braze"
    ),
  ],
  targets: [
    .target(
      name: "CustomDump",
      dependencies: [
        .product(name: "XCTestDynamicOverlay", package: "xctest-dynamic-overlay")
      ]
    ),
    .testTarget(
      name: "CustomDumpTests",
      dependencies: [
        "CustomDump"
      ]
    ),
  ]
)
