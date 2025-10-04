//
//  ProfessorListView.swift
//  Project103-Ch3
//
//  Created by Nar Rasaily on 10/4/25.
//

import SwiftUI

struct ProfessorListView: View {
    
    @State private var professors: [Professor] = [
        Professor(firstName: "John", lastName: "Arial", phoneNumber: "5858585988"),
        Professor(firstName: "Bob", lastName: "Aarik", phoneNumber: "5857778989"),
        Professor(firstName: "Rahu", lastName: "Sahu", phoneNumber: "6787778989")
    ]
    @State private var newProfesorFirstName: String = ""
    @State private var newProfesorLastName: String = ""
    @State private var newProfesorPhoneNumber: String = ""
    
    var body: some View {
        VStack {
            
            
            
            Text("Professor List View")
            VStack(spacing: 10) {
                
                
                List(professors, id: \.firstName){ professor in
                    Text("\(professor.firstName) \(professor.lastName), \n\(professor.phoneNumber)")
                }
                
            }
            
            HStack{
                TextField("First Name", text: $newProfesorFirstName)
                    .padding()
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                            .opacity(0.3)
                    )
                Spacer()
                TextField("Last Name", text: $newProfesorLastName)
                    .padding()
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                            .opacity(0.3)
                    )
                TextField("Phone Number", text: $newProfesorPhoneNumber)
                    .padding()
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                            .opacity(0.3)
                    )
                Spacer()
                
                Button("Register"){
                    
                        // create student object
                        let professor = Professor(
                            firstName: newProfesorFirstName,
                            lastName: newProfesorLastName,
                            phoneNumber: newProfesorPhoneNumber)
                        // Add the object to the Professor List (Array)
                        professors.append(professor)
                        
                        // Clear the TextField
                        newProfesorFirstName = ""
                        newProfesorLastName = ""
                        newProfesorPhoneNumber = ""
                        
                    
                    
                    
                }
                .padding()
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                        .opacity(0.3)
                )
                

            }
            
            
            
            
        }
        
    }
}


#Preview {
    ProfessorListView()
}
