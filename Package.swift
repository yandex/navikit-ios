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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.15.0-navikit.framework.zip",
            checksum: "8f999732a4e5fba6dfd6731b0383fa090f8338e6bf249eff16121fc18e634dbe"
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
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
