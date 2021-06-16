//
//  DataManager.swift
//  ContactListSwiftUI
//
//  Created by Виталий Оранский on 15.06.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["Allan", "Damon", "Anthony", "Job", "Chester",
                 "Marcia", "Felicia", "Andrea", "Gladys", "Julie"]
    
    let surnames = ["Franklin", "Washington", "Thomas", "Austin", "Shelton",
                   "Owen", "Kelley", "Stanley", "Fields", "Hunter"]
    
    let emails = ["teverett@hotmail.com", "eurohack@me.com", "johndo@sbcglobal.net",
                  "mchugh@live.com", "morain@yahoo.com", "tamas@hotmail.com",
                  "dougj@comcast.net", "jgoerzen@comcast.net", "staffelb@msn.com",
                  "doormat@hotmail.com"]
    
    let phones = ["+ 65(1727)195-79-92066", "+ 351(7482)538-58-53070",
                  "+ 535(102)795-17-33192", "+ 938(3038)798-34-83759",
                  "+ 528(1018)171-76-27074", "+ 787(7082)249-24-38945",
                  "+ 121(8966)375-10-04880", "+ 46(6448)721-09-82457",
                  "+ 276(7639)476-31-54020", "+ 891(6351)493-39-75451"]
    
    private init() {}

}
