//
//  DetailInfo.swift
//  ContactListSwiftUI
//
//  Created by Виталий Оранский on 16.06.2021.
//

import SwiftUI

struct DetailInfo: View {
    let contact: Person
    
    var body: some View {
        
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
                .padding()
            
            List {
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
        
        .navigationBarTitle(contact.fullName)
        
    }
}

struct DetailInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfo(contact: Person.createUniquePersonas()[0])
    }
}
