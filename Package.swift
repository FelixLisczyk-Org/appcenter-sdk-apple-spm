// swift-tools-version:5.3

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

import PackageDescription

let package = Package(
    name: "AppCenter",
    defaultLocalization: "en",
    products: [
        .library(
            name: "AppCenter",
            targets: [
                "AppCenterTarget",
            ]
        ),
        .library(
            name: "AppCenterCrashes",
            targets: [
                "AppCenterCrashesTarget",
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AppCenter",
            url: "https://www.snipnotes.de/files/app-center/v5.0.5/AppCenter.xcframework.zip",
            checksum: "4b1df69e60f691a4191abca62c4501a5d98cf6fc8542c57201b39178b7b71a5c"
        ),
        .binaryTarget(
            name: "AppCenterCrashes",
            url: "https://www.snipnotes.de/files/app-center/v5.0.5/AppCenterCrashes.xcframework.zip",
            checksum: "a3e386d426f91ca383ef2bf402562d00fb6b28b9f83cecc41a92395322d0024e"
        ),
        .target(
            name: "AppCenterTarget",
            dependencies: [
                "AppCenter",
            ],
            path: "AppCenter",
            sources: [
                "MSACEmpty.m",
            ]
        ),
        .target(
            name: "AppCenterCrashesTarget",
            dependencies: [
                "AppCenter",
                "AppCenterCrashes",
            ],
            path: "AppCenterCrashes",
            sources: [
                "MSACEmpty.m",
            ]
        ),
    ]
)

