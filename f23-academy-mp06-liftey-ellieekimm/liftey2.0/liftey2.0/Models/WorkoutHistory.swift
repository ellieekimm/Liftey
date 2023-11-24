//
//  WorkoutHistory.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//

import Foundation

struct WorkoutHistory: Identifiable, Hashable {
    var id = UUID()
    var dayNumber: Int
    var month: String
    var dayString: String
    var nameOfWorkout: String
    var length: String
    var exerciseLength: Int
}

extension WorkoutHistory {
    static var example: WorkoutHistory {
        WorkoutHistory(dayNumber: 15, month: "February", dayString: "FRI", nameOfWorkout: "Pull Day", length: "45:02", exerciseLength: 5)
    }
}
