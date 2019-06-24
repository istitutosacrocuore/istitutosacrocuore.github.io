//#-hidden-code
//
//  main.swift
//  
//  Copyright © 2016-2019 Apple Inc. All rights reserved.
//
//#-end-hidden-code
/*:#localized(key: "FirstProseBlock")
Use this playground to create any puzzle world you want!

*/
//#-hidden-code
import Foundation

public func assessmentPoint() -> AssessmentResults {
    return .pass(message: nil)
}


public func playgroundPrologue() {
    Display.coordinateMarkers = true
    
    world.isCharacterPickerEnabled = false
    world.successCriteria = .custom(.ignoreGoals, { return false })
    registerAssessment(world, assessment: assessmentPoint)
    
    //// ----
    // Any items added or removed after this call will be animated.
    finalizeWorldBuilding(for: world)
    //// ----
}

// MARK: Epilogue

public func playgroundEpilogue() {
    sendCommands(for: world)
}

playgroundPrologue()
typealias Character = Actor
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(literal, show, color, array)
//#-code-completion(currentmodule, show)
//#-code-completion(module, show, MyFiles)
//#-code-completion(description, show, "[Int]")
//#-code-completion(identifier, hide, assessmentPoint(), playgroundPrologue(), playgroundEpilogue())
//#-code-completion(identifier, show, isOnOpenSwitch, if, func, for, while, moveForward(), turnLeft(), turnRight(), collectGem(), toggleSwitch(), isBlocked, north, south, east, west, Water, Expert, Character, (, ), (), turnLockUp(), turnLockDown(), isOnClosedSwitch, var, let, ., =, <, >, ==, !=, +=, +, -, isBlocked, move(distance:), Character, Expert, (, ), (), Portal, color:, (color:), Block, Gem, Stair, Switch, Platform, (onLevel:controlledBy:), onLevel:controlledBy:, PlatformLock, jump(), true, false, turnLock(up:numberOfTimes:), world, place(_:facing:at:), place(_:between:and:), removeBlock(atColumn:row:), isBlockedLeft, &&, ||, !, isBlockedRight, Coordinate, column:row:), (column:row:), column:row:, place(_:at:), remove(at:), insert(_:at:), removeItems(at:), append(_:), count, column(_:), row(_:), removeFirst(), removeLast(), randomInt(from:to:), removeAll(), allPossibleCoordinates, danceLikeNoOneIsWatching(), turnUp(), breakItDown(), grumbleGrumble(), argh(), coordinates(inRows:), coordinates(inColumns:intersectingRows:), name:, (name:), byte, blu, hopper, randomBool(), height(at:), movePlatforms(up:numberOfTimes:), height(at:), coordinates(inColumns:), existingGems(at:), existingSwitches(at:), existingCharacters(at:), existingExperts(at:), existingBlocks(at:), existingWater(at:), placeBlocks(at:), placeWater(at:), placeGems(at:), CharacterName, numberOfBlocks(at:), column, row)
//#-editable-code Tap to enter code
var swicth1 = Switch(open: true)
world.place(swicth1, at: Coordinate(column: 2, row: 2))
let octet = Character(name: .blu)
world.place(octet, at: Coordinate(column: 6, row: 6))
for colonne in 0 ... 4 {
    for righe in -5 ... -2 {
        world.place(Block(), at: Coordinate(column: colonne, row: righe))
    }
}

for colonne in 8 ... 12 {
    for righe in 13 ... 16 {
        world.place(Block(), at: Coordinate(column: colonne, row: righe))
    }
}

for colonne in 9 ... 11 {
    for righe in 14 ... 15 {
        world.removeBlock(atColumn: colonne, row: righe)
        world.place(Water(), at: Coordinate(column: colonne, row: righe))
    }
}

let coordinates = world.allPossibleCoordinates

let wall = Wall(edges: [.bottom, .top, .right, .left])

let wall1 = Wall(edges: [.top])
let wall2 = Wall(edges: [.top])
let wall3 = Wall(edges: [.left])
let wall4 = Wall(edges: [.left])
let wall5 = Wall(edges: [.bottom])
let wall6 = Wall(edges: [.bottom])
let wall7 = Wall(edges: [.right])
let wall8 = Wall(edges: [.right])
let wall12 = world.place(Wall(), facing: .south, at: Coordinate(column: 9, row: 13))
let wall13 = world.place(Wall(), facing: .north, at: Coordinate(column: 9, row: 16))

world.place(wall1, at: Coordinate(column: 11, row: 13))
world.place(wall2, at: Coordinate(column: 10, row: 13))
world.place(wall3, at: Coordinate(column: 12, row: 14))
world.place(wall4, at: Coordinate(column: 12, row: 15))
world.place(wall5, at: Coordinate(column: 11, row: 16))
world.place(wall6, at: Coordinate(column: 10, row: 16))
world.place(wall7, at: Coordinate(column: 8, row: 14))
world.place(wall8, at: Coordinate(column: 8, row: 15))

//#-end-editable-code
//#-hidden-code
playgroundEpilogue()
//#-end-hidden-code
