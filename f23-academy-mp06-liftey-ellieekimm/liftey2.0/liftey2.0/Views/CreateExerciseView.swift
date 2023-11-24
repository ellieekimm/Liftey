//
//  CreateExerciseView.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//

import SwiftUI
struct CreateExerciseView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: WorkoutViewModel = WorkoutViewModel()
    @State private var reps: Int = 0
    @State private var exerciseName: String = ""
    @State private var setNumber: Int = 0
    @State private var weight: Int = 0
    var isDisabled: Bool {
        if (exerciseName == "") {
            return true
        }
        if (setNumber <= 0 || weight <= 0 || reps <= 0 ){
            return true
        }
        return false
    }
    var body: some View {
        NavigationView {
                Form {
                    Section(header: Text("Exercise Name")
                        .foregroundColor(Color("NeonGreen"))
                        .font(.headline)) {
                        TextField("Enter text", text: $exerciseName)
                    }
                    
                    Section(header: Text("Details")
                        .foregroundColor(Color("NeonGreen"))
                        .font(.headline)) {
                        HStack {
                            Text("Reps:")
                            Stepper(value: $reps, in: 0...100) {
                                Text("\(reps)")
                            }
                        }
                        
                        HStack {
                            Text("Sets:")
                            Stepper(value: $setNumber, in: 0...100) {
                                Text("\(setNumber)")
                            }
                        }
                        
                        HStack {
                            Text("Weight:")
                            TextField("Enter weight", value: $weight, format: .number)
                                .fixedSize()
                        }
                    }
                    
                    Section{
                        Button(action: {
                            let newExercise = Exercise(name: exerciseName, reps: reps, sets: setNumber, weight: weight)
                            viewModel.workout.exercises.append(newExercise)
                            dismiss()
                        }) {
                            Text("Create Exercise")
                        }
                        .disabled(isDisabled)
                    }
                    .navigationTitle("Add Exercise")
                }
                .background(Color.black)
                .scrollContentBackground(.hidden)
            }

    
        }
    }

#Preview {
    CreateExerciseView()
}
