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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.17.2-navikit.framework.zip",
            checksum: "a2ab2e4ca812fcf5102f5e360020311ef5151184350becf81ea28504a66f2f61"
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
