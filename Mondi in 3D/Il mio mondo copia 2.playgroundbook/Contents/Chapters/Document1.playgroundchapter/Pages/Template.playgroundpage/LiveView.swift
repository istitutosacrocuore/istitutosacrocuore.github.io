//
//  LiveView.swift
//  
//  Copyright © 2016-2019 Apple Inc. All rights reserved.
//

import Book

let world = GridWorld(columns: 10, rows: 10)

public func presentWorld() {
    setUpLiveViewWith(world)
}

// Indicate that this is the LiveView process. 
Process.configureForAlwaysOnLiveView()

// Present the LiveView’s `SceneController`.
// (Another world instance will be created for calculating user commands)
presentWorld()

// Start running the LiveView. 
// Initially only the idle animation will show as this is 
// presented before any user commands are run.
startPlayback()
