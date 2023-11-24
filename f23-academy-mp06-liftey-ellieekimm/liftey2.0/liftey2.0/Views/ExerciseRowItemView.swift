//
//  ExerciseRowItemView.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//

import SwiftUI

struct ExerciseRowItemView: View {
    let exercise: Exercise
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(exercise.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color("NeonPink"))
            
            HStack {
                Text("\(exercise.reps) x \(exercise.sets) x \(exercise.weight) lbs")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
        }
        .padding(5)
        .shadow(color: Color.gray.opacity(0.4), radius: 4, x: 0, y: 2)
    }
}


#Preview {
    ExerciseRowItemView(exercise: Exercise.example)
}
