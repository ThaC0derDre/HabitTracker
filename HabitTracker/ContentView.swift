//
//  ContentView.swift
//  HabitTracker
//
//  Created by Andres Gutierrez on 4/11/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var habits = Habits()
    @State private var showAddScreen = false
    var body: some View {
        NavigationView{
            List{
                if habits.habits.isEmpty {
                    Text("ADD A HABIT TO TRACK")
                }else {
                    ForEach($habits.habits) { $habit in
                        HStack{
                            Button(habit.id){
                                habit.count += 1
                            }
                            .foregroundColor(.white)
                            Spacer()
                            Text("\(habit.count)")
                        }
                    }
                }
            }
            .sheet(isPresented: $showAddScreen, content: {
                AddHabitView(habits: habits)
            })
            .navigationTitle("HabitTracker")
            .toolbar {
                Button("+"){
                    showAddScreen.toggle()
                }
                .font(.system(size: 30))
                .foregroundColor(.red)
            }
            .preferredColorScheme(.dark)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(habits: Habits.init())
    }
}
