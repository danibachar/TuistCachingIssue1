import ProjectDescription
// import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureOne",
    targets: [
        .target(
            name: "FeatureOneFramework",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.featureOne",
            sources: ["Sources/*.{swift,m}"],
            headers: .headers(public: "Sources/*.h"),
            dependencies: [
            ]
        ),
        .target(
            name: "FeatureOneFrameworkTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.featureOne.Tests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "FeatureOneFramework"),
                .external(name: "Cuckoo"),
            ]
        ),
    ]
)
