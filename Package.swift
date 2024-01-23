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
            checksum: "c97080f449bc405dde0b785257c499d2f28b1546b68840ea613d10e05bb2664a"
        ),
        .binaryTarget(
            name: "AppCenterAnalytics",
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.4/AppCenterAnalytics.xcframework.zip",
            checksum: "cd8c4d375e215b6aec3b6495d78e7cb289cf35f26001a6952725aca3f8a027e6"
        ),
        .binaryTarget(
            name: "AppCenterCrashes",
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.4/AppCenterCrashes.xcframework.zip",
            checksum: "65c3729a3917e00673cc562c4817a4389ebb20044742f1f145e88ec01ca90d89"
        ),
        .binaryTarget(
            name: "AppCenterDistribute",
            url: "https://github.com/ilendemli/appcenter-sdk-apple-spm/releases/download/5.0.4/AppCenterDistribute.xcframework.zip",
            checksum: "507b64f1e47d4c1ded4ed7360ccb4670cac1eff1cea52df0ab7dc3a62278eeaf"
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