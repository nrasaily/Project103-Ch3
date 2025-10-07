//
//  SwiftUIView.swift
//  Project103-Ch3
//
//  Created by Nar Rasaily on 10/5/25.
//

import SwiftUI

struct SwiftUIView: View {
    let student = ["Nar", "Hari", "Harka", "Sapana", "Arjun"]
    
    let studentGrades = [
        "Nar": [88, 90, 97, 88, 93],
        "Hari": [90, 76, 88, 99, 09],
        "Harka": [89, 80, 98, 99, 78],
        "Sapana": [76, 98, 70, 48, 88],
        "Arjun": [99, 88, 77, 90, 88]
    ]
    
    
    // 🧮 Function to calculate total grades for a student
    func calculateAverage(_ studentGrades: [String: [Int]]) -> Double {
        var total = 0
        var count = 0
        
        for(name, grades) in studentGrades{
            for grade in grades {
                total += grade
                count += 1
            }
        }
        return Double(total) / Double(count)
    }
    
    var body: some View {
        let average = calculateAverage(studentGrades)
        
        VStack {
            
            Text("Students")
            
            Text("AVG:  \(average)")
            
            List(students, id: \.self) { student in
                Text("Name \(student)")
             
            }
            .listStyle(GroupedListStyle())
        }
        
        }
    }


#Preview {
    SwiftUIView()
}
