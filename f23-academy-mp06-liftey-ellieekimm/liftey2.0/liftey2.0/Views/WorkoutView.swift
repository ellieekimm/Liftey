//
//  WorkoutView.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//

import SwiftUI

struct WorkoutView: View {
    @State var workout: Workout = Workout.example
    @StateObject var viewModel: WorkoutViewModel = WorkoutViewModel()
    
    var body: some View {
        TabView {
            CreateExerciseView()
                .tabItem {
                    Label("Workouts", systemImage: "plus.app.fill")
                }
            NavigationStack{
                List{
                    ForEach(viewModel.workout.exercises) { exercise in
                        ExerciseRowItemView(exercise: exercise)
                    }
                }
                .padding(.top, 2)
                .navigationTitle("My Workout")
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        HStack {
                            Button(action: {
                                viewModel.isShowingSheet.toggle()
                            }, label: {
                                HStack {
                                    Image(systemName: "plus.circle.fill")
                                        .foregroundColor(Color.blue)
                                    Text("New Exercise")
                                        .font(.headline)
                                }
                            })
                            Spacer()
                        }
                    }
                }
                .sheet(isPresented: $viewModel.isShowingSheet) {
                    CreateExerciseView(viewModel: viewModel)
                }
                .background(Color.black)
                .scrollContentBackground(.hidden)
            }
            .tabItem {
                Label("Exercises", systemImage: "list.bullet")
            }
            HistoryView()
                .tabItem {
                    Label("History", systemImage: "calendar")
                }
            SummaryView()
                .tabItem {
                    Label("Summary", systemImage: "chart.pie.fill")
                }
        }
    }
}


/*
.sheet(isPresented: $showingAddExpense) {
 AddView(expenses: expenses)
}*/

    struct WorkoutView_Previews: PreviewProvider {
        static var previews: some View {
            WorkoutView()
        }
    }
