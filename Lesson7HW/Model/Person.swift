//
//  Person.swift
//  Lesson7HW
//
//  Created by Дима Губеня on 20.07.2022.
//

import Foundation

struct Person {
    let contactName: String
    let contactSurname: String
    let contactPhone: String
    let contactMail: String
    
    var fullname: String {
        "\(contactName) \(contactSurname)"
    }
}

extension Person {
    static func contactUser() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.arrayContactName.shuffled()
        let surnames = DataManager.shared.arrayContactSurname.shuffled()
        let phones = DataManager.shared.arrayContactPhone.shuffled()
        let contactMails = DataManager.shared.arrayContactMail.shuffled()
        
        for index in 0..<names.count {
            let person = Person(contactName: names [index],
                                contactSurname: surnames [index],
                                contactPhone: phones [index],
                                contactMail: contactMails [index])
            
            persons.append(person)
        }
        return persons
    }
}
