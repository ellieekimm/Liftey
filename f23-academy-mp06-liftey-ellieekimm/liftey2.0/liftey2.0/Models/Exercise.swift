//
//  Exercise.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//
import Foundation

/// A struct that stores information about a particular exercise. Conforms to Identifiable, so it can be easily used with ForEach.
struct Exercise: Identifiable {
    let id = UUID()
    var name: String
    var reps: Int
    var sets: Int
    var weight: Int
}

extension Exercise {
    static var example: Exercise {
        Exercise(name: "Lat Pulldown", reps: 10, sets: 3, weight: 20)
    }
}
