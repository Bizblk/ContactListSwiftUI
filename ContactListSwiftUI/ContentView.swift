//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Виталий Оранский on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.createUniquePersonas()
    
    var body: some View {
        NavigationView {
            TabView {
                Contacts(contacts: contacts)
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Contacts")
                    }
                Numbers(contacts: contacts)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }.navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
