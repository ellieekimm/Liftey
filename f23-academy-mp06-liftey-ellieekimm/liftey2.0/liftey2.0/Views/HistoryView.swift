//
//  HistoryView.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//

import SwiftUI

struct HistoryView: View {
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    @State private var histories: [WorkoutHistory] = [
        WorkoutHistory(dayNumber: 7, month: "November", dayString: "TUES", nameOfWorkout: "Push Day", length: "58:02", exerciseLength: 3),
        WorkoutHistory(dayNumber: 6, month: "November", dayString: "MON", nameOfWorkout: "Hamstrings Day", length: "1:02:03", exerciseLength: 5),
        WorkoutHistory(dayNumber: 4, month: "November", dayString: "SAT", nameOfWorkout: "Leg Day", length: "1:15:30", exerciseLength: 4),
        WorkoutHistory(dayNumber: 3, month: "November", dayString: "FRI", nameOfWorkout: "Back Day", length: "1:10:45", exerciseLength: 6),
        WorkoutHistory(dayNumber: 2, month: "November", dayString: "THURS", nameOfWorkout: "Chest Day", length: "1:05:15", exerciseLength: 4),
        WorkoutHistory(dayNumber: 1, month: "November", dayString: "WED", nameOfWorkout: "Shoulder Day", length: "1:20:10", exerciseLength: 5)
      ]
    @State private var detailedView: Bool = false
    var body: some View {
        NavigationStack {
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack{
                        HStack{
                            Spacer()
                            Spacer()
                            Rectangle()
                                .fill(Color("GrayColor"))
                                .frame(width: 370, height: 80)
                                .cornerRadius(20)
                                .overlay(
                                    HStack(spacing: 15){
                                        VStack{
                                            Text("Sun")
                                                .foregroundColor(Color.white)
                                            Text("5")
                                                .foregroundColor(Color.white)
                                        }
                                        VStack{
                                            Text("Mon")
                                                .foregroundColor(Color.white)
                                            Text("6")
                                                .foregroundColor(Color.white)
                                        }
                                        Rectangle()
                                            .fill(Color("NeonGreen"))
                                            .frame(width: 50, height: 55)
                                            .cornerRadius(10)
                                            .overlay(
                                                VStack{
                                                    Text("Tues")
                                                        .foregroundColor(Color.black)
                                                        .font(.headline)
                                                        .fontWeight(.bold)
                                                    Text("7")
                                                        .foregroundColor(Color.black)
                                                        .font(.headline)
                                                        .fontWeight(.bold)
                                                }
                                            )
                                        
                                        VStack{
                                            Text("Wed")
                                                .foregroundColor(Color.white)
                                            Text("8")
                                                .foregroundColor(Color.white)
                                        }
                                        VStack{
                                            Text("Thurs")
                                                .foregroundColor(Color.white)
                                            Text("9")
                                                .foregroundColor(Color.white)
                                        }
                                        VStack{
                                            Text("Fri")
                                                .foregroundColor(Color.white)
                                            Text("10")
                                                .foregroundColor(Color.white)
                                        }
                                        VStack{
                                            Text("Sat")
                                                .foregroundColor(Color.white)
                                            Text("11")
                                                .foregroundColor(Color.white)
                                        }
                                    }
                                )
                                .padding(.top, 20)
                            Spacer()
                            Spacer()
                        }
                        ForEach(histories, id: \.self) { history in
                            Button {
                                    withAnimation {
                                            detailedView.toggle()
                                        }
                                    } label: {
                                        HistoryWorkoutView(historyWorkout: history)
                                    }
                        }
                    }
                }
                if detailedView {
                    InDepthView(detailedView: $detailedView)
                        .transition(.slide)
                }
            }
            .navigationTitle("History")
            .toolbar {
                Text("Calendar")
                    .foregroundColor(Color.blue)
                }
            }
            
        }
    }

#Preview {
    HistoryView()
}
