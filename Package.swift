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
                "AppCenterTarget"
            ]
        ),
        .library(
            name: "AppCenterAnalytics",
            targets: [
                "AppCenterAnalyticsTarget"
            ]
        ),
        .library(
            name: "AppCenterCrashes",
            targets: [
                "AppCenterCrashesTarget"
            ]
        ),
        .library(
            name: "AppCenterDistribute",
            targets: [
                "AppCenterDistributeTarget"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AppCenter",
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.4/AppCenter.xcframework.zip",
            checksum: "f32a6ff834ef83eff9aebc8e01018a7536154ebd2d63f1c653333b07423b88bb"
        ),
        .binaryTarget(
            name: "AppCenterAnalytics",
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.4/AppCenterAnalytics.xcframework.zip",
            checksum: "bd4ec06706d976792020210b93a7634ce0f9d21c7066632b58a0f43e8bc60bf7"
        ),
        .binaryTarget(
            name: "AppCenterCrashes",
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.4/AppCenterCrashes.xcframework.zip",
            checksum: "193cb11a20754f6264daad4e5ef715e56212ed374e56fa1f62bc2618c8aabe00"
        ),
        .binaryTarget(
            name: "AppCenterDistribute",
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.4/AppCenterDistribute.xcframework.zip",
            checksum: "88ff184792394c07708a802a168a9d7b12cfaf99d29fa671d8d3d7c2e900b392"
        ),
        .target(
            name: "AppCenterTarget",
            dependencies: [
                "AppCenter"
            ],
            path: "AppCenter",
            sources: [
                "MSACEmpty.m"
            ]
        ),
        .target(
            name: "AppCenterAnalyticsTarget",
            dependencies: [
                "AppCenter",
                "AppCenterAnalytics"
            ],
            path: "AppCenterAnalytics",
            sources: [
                "MSACEmpty.m"
            ]
        ),
        .target(
            name: "AppCenterCrashesTarget",
            dependencies: [
                "AppCenter",
                "AppCenterCrashes"
            ],
            path: "AppCenterCrashes",
            sources: [
                "MSACEmpty.m"
            ]
        ),
        .target(
            name: "AppCenterDistributeTarget",
            dependencies: [
                "AppCenter",
                "AppCenterDistribute"
            ],
            path: "AppCenterDistribute",
            sources: [
                "MSACEmpty.m"
            ],
            resources: [
                .copy("AppCenterDistributeResources.bundle")
            ]
        )
    ]
)