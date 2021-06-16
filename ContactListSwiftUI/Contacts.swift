//
//  Contacts.swift
//  ContactListSwiftUI
//
//  Created by Виталий Оранский on 15.06.2021.
//

import SwiftUI

struct Contacts: View {
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            NavigationLink(contact.fullName,
                           destination: DetailInfo(contact: contact))
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts(contacts: Person.createUniquePersonas())
    }
}
