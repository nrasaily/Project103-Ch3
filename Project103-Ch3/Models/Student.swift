//
//  Student.swift
//  Project103-Ch3
//
//  Created by Nar Rasaily on 10/1/25.
//
class Student {
    // Attributes
    let name: String
    var grade: [Double]
    var age: Int
    
    
    // Methods
    init(name: String, age: Int, grade: [Double]) {
        self.name = name
        self.grade = grade
        self.age = age
    }
    
    func isPassing() -> Bool {
        let averageGrade = grade.reduce(0.0, +) / Double(grade.count)
        return averageGrade >= 60
    }
    
    func printPassingStatus() {
        if isPassing(){
            print("\(name) has passed.")
        }else {
            print("\(name) has failed.")
        }
    }
}
