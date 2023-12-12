// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftFdsBitsIssue69311",
  products: [
    .library(name: "CModule", targets: ["CModule"]),
    .library(name: "SwiftFdsBitsIssue69311", targets: ["SwiftFdsBitsIssue69311"]),
  ],
  targets: [
    .systemLibrary(name: "CModule", pkgConfig: "libcurl", providers: [.apt(["libcurl4"])]),
    .target(name: "SwiftFdsBitsIssue69311", dependencies: ["CModule"]),
  ]
)
