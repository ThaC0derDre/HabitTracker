//
//  HabitDetailView.swift
//  HabitTracker
//
//  Created by Andres Gutierrez on 4/11/22.
//

import SwiftUI

struct HabitDetailView: View {
    @State var habit: Habit
    var body: some View {
        NavigationView{
        VStack{
        LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 75, height: 80, alignment: .center)
            .mask(
                Text("\(habit.count)")
                    .font(.system(size: 100).bold()))
            .padding(.bottom, 75)
            
        Text(habit.id)
                .font(.title.bold())
            
        Text(habit.description)
                .font(.headline.bold())
                .foregroundColor(.secondary)
            Spacer()
    }
            
        }
    }
}

struct HabitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetailView(habit: Habit(id: "Running", count: 5, description: "Running to get cardio in"))
            .preferredColorScheme(.dark)
    }
}
