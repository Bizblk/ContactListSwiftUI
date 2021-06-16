//
//  Numbers.swift
//  ContactListSwiftUI
//
//  Created by Виталий Оранский on 16.06.2021.
//

import SwiftUI

struct Numbers: View {
    let contacts: [Person]
    var body: some View {
        List {
            ForEach(contacts) { contact in
                Section(header: Text(contact.fullName)) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(contact.phone)
                    }
                    HStack {
                        Image(systemName: "envelope.open")
                            .foregroundColor(.blue)
                        Text(contact.email)
                    }
                }
            }
        }
    }
}



struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(contacts: Person.createUniquePersonas())
    }
}
