//
//  HabitDetailView.swift
//  HabitTracker
//
//  Created by Andres Gutierrez on 4/11/22.
//

import SwiftUI

struct HabitDetailView: View {
    @State var habit: Habit
    @State private var completed    = false
    var body: some View {
        NavigationView{
            VStack{
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width: 300, height: 300, alignment: .center)
                    .mask(
                        Text("\(habit.count)")
                            .font(.system(size: 300).bold()))
                    .padding(.bottom, 5)
                
                
                VStack{
                    Text(habit.id)
                        .font(.title.bold())
                        .padding(.bottom, 10)
                    
                    Text(habit.description)
                        .font(.headline.bold())
                        .foregroundColor(.secondary)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.horizontal, 10)
                    Spacer()
                    
                    
                    Button("Complete \(Image(systemName: completed ?  "checkmark.circle.fill" : "circle"))"){
                        withAnimation{
                            completed.toggle()
                            habit.count += 1
                        }
                    }
                    .font(.title3.bold())
                    .foregroundColor(.white)
                    .frame(width: 150, height: 55)
                    .background(.quaternary)
                    .clipShape(Capsule())
                    .padding(.bottom)
                }
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
