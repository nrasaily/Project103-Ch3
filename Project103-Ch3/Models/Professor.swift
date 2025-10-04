//
//  Professor.swift
//  Project103-Ch3
//
//  Created by Nar Rasaily on 10/4/25.
//

import Foundation

class Professor: Identifiable {
    // Attribute
    let id: UUID
    var firstName: String
    var lastName: String
    var phoneNumber: String
    // Method
    init(firstName: String, lastName: String, phoneNumber: String){
        self.id = UUID()
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        
    }
    
}
