// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "MyLibrary",
  defaultLocalization: "en",
  platforms: [
    .macOS("13.3"),
    .iOS("16.4"),
    .tvOS(.v16),
    .watchOS(.v9)
  ],
  products: [
    .library(name: "MyLibrary", targets: ["MyLibrary"]),
  ],
  targets: [
    .target(name: "MyLibrary"),
  ]
)
