//
//  WorkoutViewModel.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//

import SwiftUI

import Foundation

class WorkoutViewModel: ObservableObject {
    @Published var workout: Workout = Workout.example
    @Published var isShowingSheet: Bool = false
    var isDisabled: Bool = true
}
