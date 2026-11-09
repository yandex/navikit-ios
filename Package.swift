// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YandexMapsMobileNavikit",
    defaultLocalization: "en",
    platforms: [.iOS("15.0")],
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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.47.0-navikit.framework.zip",
            checksum: "3971f1d6c3891502e8f8d773e7eef16c6b5f43c31104d39628a3343878bc3911"
        ),
        .target(
            name: "YandexMapsMobileNavikitResources",
            path: "Resources",
            resources: [.copy("Contents.bundle")],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreMedia"),
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
