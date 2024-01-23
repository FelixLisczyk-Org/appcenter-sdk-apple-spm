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
// GENERATED BINARY TARGETS
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
