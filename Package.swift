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
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.5/AppCenter.xcframework.zip",
            checksum: "4b1df69e60f691a4191abca62c4501a5d98cf6fc8542c57201b39178b7b71a5c"
        ),
        .binaryTarget(
            name: "AppCenterAnalytics",
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.5/AppCenterAnalytics.xcframework.zip",
            checksum: "d69b28882806e2fc6e10b6a2eeddddbd563f51f9d3debd44f1e82f6007290bf9"
        ),
        .binaryTarget(
            name: "AppCenterCrashes",
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.5/AppCenterCrashes.xcframework.zip",
            checksum: "a3e386d426f91ca383ef2bf402562d00fb6b28b9f83cecc41a92395322d0024e"
        ),
        .binaryTarget(
            name: "AppCenterDistribute",
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.5/AppCenterDistribute.xcframework.zip",
            checksum: "64fc7090b10944ea57ce724dca5fac352a02a601a362bce60c41f758ce51b9cc"
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