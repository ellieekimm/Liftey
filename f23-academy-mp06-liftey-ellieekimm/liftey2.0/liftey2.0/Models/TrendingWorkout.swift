//
//  TrendingWorkout.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//
import Foundation

struct TrendingWorkout: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var image: String
    var calories: Int
}

extension TrendingWorkout {
    static var example: TrendingWorkout {
        TrendingWorkout(name: "Bicep Curls", image: "dumbbell.fill", calories: 165)
    }
}
