// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YandexMapsMobileNavikit",
    defaultLocalization: "en",
    platforms: [.iOS("12.0")],
    products: [
        .library(
            name: "YandexMapsMobileNavikit",
            type: .static,
            targets: [
                "YandexMapsMobileNavikit",
                "YandexMapsMobileNavikitResources"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "YandexMapsMobileNavikit",
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.32.1-navikit.framework.zip",
            checksum: "07e3be55b7e02f1d74797b042d8fb90c367216e1baaa06e8ad63e44d1f0dda45"
        ),
        .target(
            name: "YandexMapsMobileNavikitResources",
            path: "Resources",
            resources: [.process("Contents")],
            linkerSettings: [
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("UIKit"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("DeviceCheck"),
                .linkedFramework("NetworkExtension"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
