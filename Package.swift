// swift-tools-version:5.0
//===----------------------------------------------------------------------===//
//
// This source file is part of the AsyncHTTPClient open source project
//
// Copyright (c) 2018-2019 Apple Inc. and the AsyncHTTPClient project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AsyncHTTPClient project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import PackageDescription

let package = Package(
    name: "async-http-client",
    products: [
        .library(name: "AsyncHTTPClient", targets: ["AsyncHTTPClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/brightenai/swift-nio.git", .branch("master")),//from: "2.19.0"),
        .package(url: "https://github.com/brightenai/swift-nio-ssl.git", .branch("master")),// from: "2.8.0"),
        .package(url: "https://github.com/brightenai/swift-nio-extras.git", .branch("master")),// from: "1.3.0"),
        .package(url: "https://github.com/brightenai/swift-nio-transport-services.git", .branch("master")),// from: "1.5.1"),
        .package(url: "https://github.com/brightenai/swift-log.git", from: "1.4.0"),
    ],
    targets: [
        .target(
            name: "AsyncHTTPClient",
            dependencies: ["NIO", "NIOHTTP1", "NIOSSL", "NIOConcurrencyHelpers", "NIOHTTPCompression",
                           "NIOFoundationCompat", "NIOTransportServices", "Logging"]
        ),
//        .testTarget(
//            name: "AsyncHTTPClientTests",
//            dependencies: ["NIO", "NIOConcurrencyHelpers", "NIOSSL", "AsyncHTTPClient", "NIOFoundationCompat",
////                           "NIOTestUtils",
//                           "Logging"]
//        ),
    ]
)
