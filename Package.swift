// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "IonicPortalsWrapper",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "IonicPortalsWrapper",
                 type: .dynamic,
                 targets: ["IonicPortalsTarget"])
    ],
    
    dependencies: [
        .package(url: "https://github.com/ionic-team/ionic-live-updates-releases", "0.5.0"..<"0.6.0"),
    ],
    targets: [
        .binaryTarget(name: "IonicPortals", path: "IonicPortals.xcframework"),
        .target(name: "IonicPortalsTarget",
                dependencies: [
                    .target(name: "IonicPortals"),
                    .product(name: "IonicLiveUpdates", package: "ionic-live-updates-releases"),
                ],
                
                path: "wrapper")
    ]
    
)

