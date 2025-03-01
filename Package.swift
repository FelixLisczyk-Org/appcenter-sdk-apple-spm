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
            url: "https://www.snipnotes.de/files/app-center/v5.0.6/AppCenter.xcframework.zip",
            checksum: "c48a9e3fbec521570466f1884cba60a8e9a7051b6e1f4cc3279755a447678a98"
        ),
        .binaryTarget(
            name: "AppCenterCrashes",
            url: "https://www.snipnotes.de/files/app-center/v5.0.6/AppCenterCrashes.xcframework.zip",
            checksum: "d6f0ad9f4156a40c5b8e08d0778b87a22ade9919338677ff4919881a500734c3"
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

