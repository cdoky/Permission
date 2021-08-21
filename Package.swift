// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Permission",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Permission",
            targets: ["Permission"]
        ),
        .library(
            name: "Permission/Bluetooth",
            targets: ["Permission/Bluetooth"]
        ),
        .library(
            name: "Permission/Camera",
            targets: ["Permission/Camera"]
        ),
        .library(
            name: "Permission/Contacts",
            targets: ["Permission/Contacts"]
        ),
        .library(
            name: "Permission/Events",
            targets: ["Permission/Events"]
        ),
        .library(
            name: "Permission/Location",
            targets: ["Permission/Location"]
        ),
        .library(
            name: "Permission/Microphone",
            targets: ["Permission/Microphone"]
        ), .library(
            name: "Permission/Motion",
            targets: ["Permission/Motion"]
        ),
        .library(
            name: "Permission/Notifications",
            targets: ["Permission/Notifications"]
        ),
        .library(
            name: "Permission/Photos",
            targets: ["Permission/Photos"]
        ),
        .library(
            name: "Permission/Reminders",
            targets: ["Permission/Reminders"]
        ),
        .library(
            name: "Permission/SpeechRecognizer",
            targets: ["Permission/SpeechRecognizer"]
        ),
        .library(
            name: "Permission/MediaLibrary",
            targets: ["Permission/MediaLibrary"]
        ),
        .library(
            name: "Permission/Siri",
            targets: ["Permission/Siri"]
        ),
    ],
    targets: [
        .target(
            name: "Permission",
            dependencies: [],
            path: "Source/Core"
        ),
        .target(
            name: "Permission/Bluetooth",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Bluetooth.swift",
            ],
            cSettings: [
                .define("PERMISSION_BLUETOOTH"),
            ]
        ),
        .target(
            name: "Permission/Camera",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Camera.swift",
            ],
            cSettings: [
                .define("PERMISSION_CAMERA"),
            ]
        ),
        .target(
            name: "Permission/Contacts",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Contacts.swift",
            ],
            cSettings: [
                .define("PERMISSION_CONTACTS"),
            ]
        ),
        .target(
            name: "Permission/Events",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Events.swift",
            ],
            cSettings: [
                .define("PERMISSION_EVENTS"),
            ]
        ),
        .target(
            name: "Permission/Location",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Location.swift",
            ],
            cSettings: [
                .define("PERMISSION_LOCATION"),
            ]
        ), .target(
            name: "Permission/Microphone",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Microphone.swift",
            ],
            cSettings: [
                .define("PERMISSION_MICROPHONE"),
            ]
        ),
        .target(
            name: "Permission/Motion",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Motion.swift",
            ],
            cSettings: [
                .define("PERMISSION_MOTION"),
            ]
        ),
        .target(
            name: "Permission/Notifications",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Notifications.swift",
            ],
            cSettings: [
                .define("PERMISSION_NOTIFICATIONS"),
            ]
        ),
        .target(
            name: "Permission/Photos",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Photos.swift",
            ],
            cSettings: [
                .define("PERMISSION_PHOTOS"),
            ]
        ),
        .target(
            name: "Permission/Reminders",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Reminders.swift",
            ],
            cSettings: [
                .define("PERMISSION_REMINDERS"),
            ]
        ),
        .target(
            name: "Permission/SpeechRecognizer",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "SpeechRecognizer.swift",
            ],
            cSettings: [
                .define("PERMISSION_SPEECH_RECOGNIZER"),
            ]
        ),
        .target(
            name: "Permission/MediaLibrary",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "MediaLibrary.swift",
            ],
            cSettings: [
                .define("PERMISSION_MEDIA_LIBRARY"),
            ]
        ),
        .target(
            name: "Permission/Siri",
            dependencies: ["Permission"],
            path: "Source/Types",
            sources: [
                "Siri.swift",
            ],
            cSettings: [
                .define("PERMISSION_SIRI"),
            ]
        ),
    ]
)
