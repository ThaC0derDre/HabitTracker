//
//  HabitModel.swift
//  HabitTracker
//
//  Created by Andres Gutierrez on 4/11/22.
//

import Foundation


class Habits: ObservableObject {
    @Published var habits = [Habit]()
}
struct Habit: Identifiable {
    var id: String
    var count: Int
    var description: String
}
