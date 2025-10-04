//
//  StudentListView.swift
//  Project103-Ch3
//
//  Created by Nar Rasaily on 10/1/25.
//

import SwiftUI

struct StudentListView: View {
    
    
    @State private var students: [Student] = [
        Student(name: "Fernanda", age: 10, grade: 78.66),
        Student(name: "John", age: 11, grade: 92.45),
        Student(name: "Mary", age: 12, grade: 89.21),
        Student(name: "David", age: 13, grade: 94.12),
        Student(name: "Thomas", age: 14, grade: 76.54)
    ]
    
    
    // Define the state variable for inputs
    @State private var newStudentName: String = ""
    @State private var newStudentGrade: String = ""
    
    var body: some View {
        Text("Student List View")
        
        List(students, id: \.name){ student in
            Text(" Name: \(student.name): - Grade: \(student.grade, specifier: "%.2f")")
        }
        HStack {
            TextField("Name", text: $newStudentName)
                .padding()
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                        .opacity(0.3)
                )
            
            
            TextField("Grade", text: $newStudentGrade)
                .padding()
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                        .opacity(0.3)
                )
            
            Button("Add Student") {
                if let grade = Float(newStudentGrade){
                    // create student object
                    let student = Student(name: newStudentName, age: 0, grade: grade)
                    // Add the object to the Students List (Array)
                    students.append(student)
                    
                    // Clear the TextField
                    newStudentName = ""
                    newStudentGrade = ""
                }
            }
        
            .padding()
            
        }
        .padding()
    }
    
}

#Preview {
    StudentListView()
}
