//
//  DataManager.swift
//  Lesson7HW
//
//  Created by Дима Губеня on 20.07.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    let arrayContactName: [String] = ["Dima", "Sasha", "Pasha", "Misha", "Egor"]
    let arrayContactSurname: [String] = ["Ivanov", "Sherban", "Efimov", "Alexeev", "Kirilov"]
    let arrayContactPhone: [String] = ["43434", "34535", "20393", "2023939", "19293"]
    let arrayContactMail: [String] = ["mail.1", "mail.2", "mail.3", "mail.4", "mail.5"]
}
