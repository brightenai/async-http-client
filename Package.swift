// swift-tools-version:5.0
//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftNIOHTTP open source project
//
// Copyright (c) 2017-2018 Swift Server Working Group and the SwiftNIOHTTP project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftNIOHTTP project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import PackageDescription

let package = Package(
    name: "SwiftNIOHTTP",
    products: [
        .library(name: "SwiftNIOHTTP", targets: ["SwiftNIOHTTP"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-nio-ssl.git", from: "2.0.0"),
    ],
    targets: [
        .target(
            name: "SwiftNIOHTTP",
            dependencies: ["NIO", "NIOHTTP1", "NIOSSL", "NIOConcurrencyHelpers"]),
        .testTarget(
            name: "SwiftNIOHTTPTests",
            dependencies: ["SwiftNIOHTTP"]),
    ]
)