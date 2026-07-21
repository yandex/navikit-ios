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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.42.0-navikit.framework.zip",
            checksum: "735bb781cc9dbb9b578ab81e2caf18e668c9df563eae4974245308fdb641009d"
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
