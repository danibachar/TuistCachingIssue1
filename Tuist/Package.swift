// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "PackageName",
    dependencies: [
        .package(url: "https://github.com/Brightify/Cuckoo.git", .upToNextMajor(from: "1.9.1")),
    ]
)
