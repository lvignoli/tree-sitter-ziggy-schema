// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterZiggySchema",
    products: [
        .library(name: "TreeSitterZiggySchema", targets: ["TreeSitterZiggySchema"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterZiggySchema",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterZiggySchemaTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterZiggySchema",
            ],
            path: "bindings/swift/TreeSitterZiggySchemaTests"
        )
    ],
    cLanguageStandard: .c11
)
