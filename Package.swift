// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "ISO20275",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .tvOS(.v16),
        .watchOS(.v9),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "ISO20275",
            targets: ["ISO20275"]
        ),
    ],
    targets: [
        .target(
            name: "ISO20275",
            resources: [
                .copy("Resources/2026-02-19-elf-code-list-v1.6.csv"),
            ]
        ),
        .testTarget(
            name: "ISO20275Tests",
            dependencies: ["ISO20275"]
        ),
    ]
)
