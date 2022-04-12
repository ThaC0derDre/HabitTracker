//
//  AddHabitView.swift
//  HabitTracker
//
//  Created by Andres Gutierrez on 4/11/22.
//

import SwiftUI

struct AddHabitView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var habits: Habits
    @State private var title        = ""
    @State private var description  = ""
    var body: some View {
        NavigationView{
            Form{
                TextField("What hobby?", text: $title)
                TextField("Description", text: $description)
            }
            .navigationTitle("Track New Hobby")
            .toolbar {
                Button("ADD"){
                    addNewHabit(title: title, description: description)
                    dismiss()
                }
            }
        }
    }
    
    
    func addNewHabit(title: String, description: String) {
        let habit = Habit(id: title, count: 0, description: description)
        habits.habits.append(habit)
        
    }
}

struct AddHabitView_Previews: PreviewProvider {
    static var previews: some View {
        AddHabitView(habits: Habits.init())
            .preferredColorScheme(.dark)
    }
}
