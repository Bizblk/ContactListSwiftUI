//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Виталий Оранский on 15.06.2021.
//

import Foundation

struct Person: Identifiable {
    
    let name: String
    let lastName: String
    let email: String
    let phone: String
    let id = UUID()
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    static func createUniquePersonas() -> [Person] {
        var persons = [Person]()
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0...min(names.count, surnames.count, emails.count, phones.count) - 1 {
            persons.append(Person(name: names[index],
                                  lastName: surnames[index],
                                  email: emails[index],
                                  phone: phones[index]))
            
        }
        
        return persons
    }
}
