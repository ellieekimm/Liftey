//
//  SummaryView.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//

import SwiftUI

struct SummaryView: View {
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var trendingWorkouts: [TrendingWorkout] = [TrendingWorkout(name: "Bicep Curls", image: "dumbbell.fill", calories: 65), TrendingWorkout(name: "Jogging", image: "figure.run", calories: 90), TrendingWorkout(name: "Goblet Squats", image: "figure.strengthtraining.traditional", calories: 85)]
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    HStack {
                        VStack(alignment: .leading){
                            Text("This Week's Activity")
                                .foregroundColor(Color.white)
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.bottom, 10)
                            Text("Workouts")
                                .foregroundColor(Color.white)
                                .font(.title3)
                            Text("5")
                                .foregroundColor(Color("NeonGreen"))
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.bottom, 7)
                            Text("Exercise Length")
                                .foregroundColor(Color.white)
                                .font(.title3)
                            Text("3 hr 42 min")
                                .foregroundColor(Color("NeonPink"))
                                .fontWeight(.bold)
                                .font(.title)
                                .padding(.bottom, 20)
                            Text("Highlights")
                                .foregroundColor(Color.white)
                                .font(.title2)
                                .fontWeight(.bold)
                            HStack{
                                Image(systemName: "flame.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 12)
                                    .foregroundColor(Color.red)
                                Text("Workouts")
                                    .foregroundColor(Color.red)
                                    .fontWeight(.bold)
                            }
                            Text("You averaged more workouts this week than the week before.")
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .padding(.bottom, 20)
                            Text("Trending Exercises")
                                .foregroundColor(Color.white)
                                .font(.title2)
                                .fontWeight(.bold)
                                
                            Spacer()
                        }
                        .navigationTitle("Summary")
                        .padding(.top, 10)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    HStack {
                        VStack {
                                ForEach(trendingWorkouts) { workout in
                                    TrendingWorkoutView(trendingWorkout: workout)
                            }
                        }
                        ForEach(0..<5) { item in
                        Spacer()}
                    }
                    ForEach(0..<6) { item in
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    SummaryView()
}
